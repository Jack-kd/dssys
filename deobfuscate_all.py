#!/usr/bin/env python3
"""Extract ALL decrypted strings from pp.txt, dump to file, filter for API/URL patterns."""
import binascii, re

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate_hex(hex_str):
    raw = binascii.unhexlify(hex_str)
    if len(raw) < 2:
        return None
    seed = raw[0]
    key = raw[1]
    pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        rot = ror8(x, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

hexre = re.compile(r'"([0-9a-fA-F]{6,})"')
decoded = {}
seen = set()
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = hexre.search(line)
        if not m:
            continue
        h = m.group(1).lower()
        if len(h) % 2 != 0:
            continue
        if h in seen:
            continue
        seen.add(h)
        b = deobfuscate_hex(h)
        if b is None:
            continue
        try:
            t = b.decode("utf-8")
            decoded[h] = t
        except Exception:
            decoded[h] = "~b:" + b.hex()

# dump all
with open("/workspace/decrypted_strings.txt", "w", encoding="utf-8") as f:
    for h, t in sorted(decoded.items(), key=lambda kv: (kv[1] is None, kv[0])):
        f.write(f"{h}\t{t}\n")

print(f"Total decrypted: {len(decoded)}")

# filter interesting: urls, paths, api, http, domain-like
interesting = []
for h, t in decoded.items():
    if t.startswith("~b:"):
        continue
    if re.search(r'(?i)https?://|/api/|\.php|maccms|provide|\.com|\.cn|\.top|\.net|\.cc|\.tv|\.xyz|\.club|接口|解析|域名|host|baseUrl|base_url|server|endpoint', t):
        interesting.append(t)

print("\n=== API/URL/domain-like decrypted strings ===")
for t in sorted(set(interesting)):
    print(repr(t))
