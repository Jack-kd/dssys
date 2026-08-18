#!/usr/bin/env python3
"""Decode ALL pp strings; list every decoded string that looks like a domain or
host (contains '.', no spaces, short) — candidates for the real API host."""
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
        ok = all(0x20 <= c < 0x7f for c in d)
    except Exception:
        ok = False
    if not ok:
        continue
    # domain-ish: contains a dot, no spaces, len 5..45
    if '.' in t and ' ' not in t and 4 < len(t) < 50 and not t.startswith('http'):
        print(f"pp+0x{off:05x} ({len(t):3d}B): {t!r}")
