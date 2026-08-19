#!/usr/bin/env python3
"""Decode every pp hex string into printable text; save full table and flag interesting ones."""
import binascii, re

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate_hex(hex_str):
    raw = binascii.unhexlify(hex_str)
    if len(raw) < 2:
        return None
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        rot = ror8(x, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

def is_printable(b):
    if not b:
        return False
    return all(0x20 <= c < 0x7f or c in (9, 10, 13) for c in b)

rows = []
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if not m:
            continue
        off = int(m.group(1),16)
        s = m.group(2)
        if len(s) < 6 or len(s) % 2 != 0 or not re.fullmatch(r'[0-9a-fA-F]+', s):
            continue
        try:
            d = deobfuscate_hex(s)
        except Exception:
            continue
        if d is None:
            continue
        rows.append((off, d))

# dump all decodes (incl binary) sorted by offset
with open('/workspace/pp_decoded_all.txt','w') as g:
    for off, d in sorted(rows):
        g.write(f"pp+0x{off:05x}\t{d.hex()}\t{d.decode('utf-8','replace')!r}\n")

# printable + interesting
print(f"total hex strings: {len(rows)}")
pat = re.compile(r'https?://|xdd|\.(com|cn|net|top|org|xyz|cc|tv|site|fun|club|vip|app|io|me|info)(/|$)|\.php|secret|parse_|app_config|api|csrf|sign_|key|url|domain|host', re.I)
print("\n--- INTERESTING DECODED STRINGS ---")
for off, d in sorted(rows):
    if not is_printable(d):
        continue
    t = d.decode('utf-8', errors='replace')
    if pat.search(t) and len(t) >= 4:
        print(f"pp+0x{off:05x}: {t!r}")
