#!/usr/bin/env python3
"""Decode the pp string offsets referenced by parse_secret / config builder functions."""
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

# Offsets referenced by the config/parse functions (x27, #imm, lsl #12 + lo)
# From disasm: 
# parse_secret @0x504968: x27,#0x1e lsl12 + 0xa30 .. 0xab8
# config builder @0x797700/0x720/0x73c: x27,#0x20 lsl12 + 0xfd0, 0xfd8, 0xfe0
# app_config @0x7a3860: x27,#0x15 lsl12 + 0xcc0
# _decryptRsa @0x7a4230: x27,#0x15 lsl12 + 0xe18 ; 0x7a41e0: +0xe10
# RSA decrypt refs @0x404e94 region
# URL construction @0x3abd68: x27,#0x17 lsl12 + 0xd78, 0xd80
# _Ajg blob @0x48e630: x27,#0x16 lsl12 + 0xd8

offsets = [
    # parse_secret region (x27,#0x1e lsl12 = 0x1e000)
    0x1e000+0xa30, 0x1e000+0xa38, 0x1e000+0xa48, 0x1e000+0xa50, 0x1e000+0xa58,
    0x1e000+0xa60, 0x1e000+0xa68, 0x1e000+0xa78, 0x1e000+0xa80, 0x1e000+0xa90,
    0x1e000+0xaa0, 0x1e000+0xaa8, 0x1e000+0xab8, 0x1e000+0xac8,
    # config builder (x27,#0x20 lsl12 = 0x20000)
    0x20000+0xfd0, 0x20000+0xfd8, 0x20000+0xfe0, 0x20000+0xfc8,
    # app_config (x27,#0x15 lsl12 = 0x15000)
    0x15000+0xcc0, 0x15000+0xcd0, 0x15000+0xe10, 0x15000+0xe18,
    # URL construction (x27,#0x17 lsl12 = 0x17000)
    0x17000+0xd78, 0x17000+0xd80,
    # _Ajg blob (x27,#0x16 lsl12 = 0x16000)
    0x16000+0xd8,
    # parse_secret / parse_api / extra_parse_api label strings
    0x1eac8, 0x1eaf0, 0x1eb18, 0x20fe0,
]

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
