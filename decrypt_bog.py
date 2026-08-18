#!/usr/bin/env python3
import binascii

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

targets = {
    'f6a3a93246f55f54b9c576e4c5252baa793c01e586680918e515b93319dc148450c9a94c07f5e0ac7887f2': 'ZYa.bog (long)',
    '95c70b0cb16052d009': 'ZYa field2',
    'c05ce21550393bf590': 'near bog 2',
    '8e6b4e0643f7506e63': 'near bog 3',
    'b7a018693eaba727c0': 'near navigate',
    'd7564647d86d649226c5': 'near navigate 2',
    '44f12d13d498bd4384': 'getSign',
}
for h, label in targets.items():
    b = deobfuscate_hex(h)
    print(f"{label:20s}: {b!r}" if b else f"{label}: FAIL")
