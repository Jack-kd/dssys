#!/usr/bin/env python3
"""Decode ALL pp strings with seed/key/ror; dump anything URL/domain-ish or
containing interesting config keys. Also list all strings containing 'xdd', 'ndsx',
'api', 'secret', 'sign', 'key', 'domain', 'host', 'url', 'http'."""
import re, binascii

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff

def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

# Decode all hex strings
decoded = {}  # off -> decoded text
for off, s in sorted(strings.items()):
    if len(s) < 4 or len(s) % 2 != 0:
        continue
    if not re.fullmatch(r'[0-9a-fA-F]+', s):
        continue
    try:
        d = dec_hex(s)
    except Exception:
        continue
    try:
        t = d.decode('utf-8')
        ok = all(0x20 <= c < 0x7f or c in (10,13,9) for c in d)
    except Exception:
        ok = False
    if ok:
        decoded[off] = t

print(f"decoded readable strings: {len(decoded)}")

# 1) domain/URL-ish
print("\n=== http/domain-ish decoded strings ===")
for off, t in sorted(decoded.items()):
    if re.search(r'(http|\.com|\.cn|\.net|\.top|\.xyz|\.vip|\.tv|\.cc|\.site|\.info|\.org|\.me|\.co|\.app|\.dev|\.io|\.club|\.fun|\.live|\.link|\.pro|\.run|\.shop|\.space|\.tech|\.video|\.cloud|\.appad|xdd|ndsx|myqcloud|bcebos|aliyun|cos\.)', t, re.I):
        print(f"  pp+0x{off:05x} ({len(t):3d}B): {t!r}")

# 2) config-key-ish
print("\n=== config/key/secret-ish decoded strings ===")
for off, t in sorted(decoded.items()):
    if re.search(r'(secret|sign|_key|apikey|api_key|token|csrf|parse_|_url|domain|host|base_|config|_api)', t, re.I) and len(t) < 80:
        print(f"  pp+0x{off:05x} ({len(t):3d}B): {t!r}")

# 3) all decoded strings with xdd / ndsx anywhere
print("\n=== decoded strings containing xdd/ndsx ===")
for off, t in sorted(decoded.items()):
    if 'xdd' in t or 'ndsx' in t:
        print(f"  pp+0x{off:05x}: {t!r}")
