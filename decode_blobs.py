#!/usr/bin/env python3
"""Deobfuscate the hex string blobs found at specific PP offsets."""
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

def pretty(b):
    if b is None:
        return "(too short)"
    try:
        return repr(b.decode("utf-8"))
    except Exception:
        pass
    if all(0x20 <= c < 0x7f for c in b):
        return repr(b.decode("latin-1"))
    return "bytes(" + b.hex() + ")"

blobs = {
    "pp+0x14e78": "ebbf48f20d2ee96bfc2e68aaa57ec1",
    "pp+0x14e80": "8d5a0ce1b81c13",
    "pp+0x14e88": "c8e70a09296c0dd9edf7a5e89bc8",
    "pp+0x16fd8": "052ee21cd47928d73d7233eca6c8f927ee42601ff698",
    "pp+0x16fe8": "44f12d13d498bd4384",
    "pp+0x1ea60": "f05337fa2c96",
    "pp+0x1eaa0": "4f519bca57a3",
    "pp+0x1eac8": "114b7183c16a56df47176a90ba18",
    "pp+0x1eaf0": "0ed398785793bb980c8c1a",
    "pp+0x1eb18": "278d08de1779823ad919722c8cc672024a",
    "pp+0x1eb40": "ec604905c845b91549",
    "pp+0x1eb68": "5203218df835ddc1e54d40fc689d8c",
    "pp+0x1eb90": "55487424ff28521c99ce2abbcf19ec0c6671",
    "pp+0x1ebb8": "5f37e58c485dc3d4182f549db9",
    "pp+0x176e8": None,
    "pp+0x1ea50": None,
    "pp+0x1ea58": None,
    "pp+0x1ea78": None,
    "pp+0x1ea90": None,
    "pp+0x1eab8": None,
    "pp+0x1eae0": None,
    "pp+0x1eb08": None,
    "pp+0x1eb30": None,
    "pp+0x1eb58": None,
    "pp+0x1eb80": None,
    "pp+0x1eba8": None,
    "pp+0x1ebd0": None,
    "pp+0x1ebe8": None,
}
for label, h in blobs.items():
    if h is None:
        print(f"{label}: (hex not in pp.txt String entry)")
    else:
        print(f"{label}: {pretty(deobfuscate_hex(h))}")
