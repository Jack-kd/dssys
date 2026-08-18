#!/usr/bin/env python3
"""Decode pp offsets used by the config-builder (0x7976b4) and RSA-decrypt caller."""
import binascii, re, sys

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

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

# config-builder (0x7976b4) uses pp page 0x20 + 0xfd0, 0xfd8, 0xfe0 (secret_parse_api_url)
# RSA-decrypt caller (0x77c86c) uses pp page 0x11 + 0x888, 0x830, 0x838, 0x890, 0x898, 0x8a0, 0x8a8, 0x8b0
# error strings in RSA core: pp page 0x12 + 0x458..0x498
offsets = [0x20fd0, 0x20fd8, 0x20fe0,
           0x11888, 0x11830, 0x11838, 0x11890, 0x11898, 0x118a0, 0x118a8, 0x118b0,
           0x12458, 0x12460, 0x12468, 0x12470, 0x12478, 0x12480, 0x12488, 0x12490, 0x12498]

for off in offsets:
    s = strings.get(off)
    if s is None:
        print(f"pp+0x{off:05x}: NOT PRESENT")
        continue
    if len(s) < 6 or len(s) % 2 != 0 or not re.fullmatch(r'[0-9a-fA-F]+', s):
        print(f"pp+0x{off:05x}: raw={s[:80]!r}")
        continue
    try:
        d = deobfuscate_hex(s)
        t = d.decode('utf-8', errors='replace')
        print(f"pp+0x{off:05x}: {t!r}")
    except Exception as e:
        print(f"pp+0x{off:05x}: ERR {e} raw={s[:80]!r}")
