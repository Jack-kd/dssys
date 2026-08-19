#!/usr/bin/env python3
"""Decode more pp offsets referenced by the decrypt caller / _kxe init functions."""
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

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

# From caller of _decryptRsa (0x7a3bc8): x27,#0x15 lsl12 + offsets
# 0x7a3cec: 0x15d68 ; 0x7a3d10: 0x15d78 ; 0x7a3d84: 0x15d90 ; 0x7a3de4: 0x15d98 ; 0x7a3e04: 0x15da8
# _decryptRsa (0x7a41ac): 0x15e10 ('['), 0x15e18 ('_decryptRsa error')
# 0x7a4264 (next fn): 0x15df0, 0x16e8, 0x16f0
# caller of config builder (0x796c34): x27,#0x20 lsl12 + 0xec8, 0xed0, 0xed8, 0xee0, 0xee8, 0xef8
# parse_secret fn strings: x27,#0x1e lsl12 + 0xa30..0xac8 (only 0xa30,0xa60,0xaa0 decoded)
# _kxe init (ZGi): look for keys
# caller of app_config (0x7a35dc): 0x15c18 ? 

offsets = [0x15d68, 0x15d78, 0x15d90, 0x15d98, 0x15da8, 0x15df0, 0x16e8, 0x16f0,
           0x20ec8, 0x20ed0, 0x20ed8, 0x20ee0, 0x20ee8, 0x20ef8,
           0x1ea30, 0x1ea60, 0x1eaa0, 0x1eac8, 0x1eaf0, 0x1eb18,
           0x15c18, 0x15cd0, 0x15e10, 0x15e18, 0x20fc8]

for off in offsets:
    s = strings.get(off)
    if s is None:
        print(f"pp+0x{off:05x}: NOT PRESENT")
        continue
    if len(s) < 6 or len(s) % 2 != 0 or not re.fullmatch(r'[0-9a-fA-F]+', s):
        print(f"pp+0x{off:05x}: raw={s[:60]!r}")
        continue
    try:
        d = deobfuscate_hex(s)
        t = d.decode('utf-8', errors='replace')
        print(f"pp+0x{off:05x}: {t!r}")
    except Exception as e:
        print(f"pp+0x{off:05x}: ERR {e} raw={s[:60]!r}")
