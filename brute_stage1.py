#!/usr/bin/env python3
"""Brute-force stage-1 interpretations to find which yields readable text."""
import binascii, itertools

def ror8(x, n):
    n &= 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def decode_stage2(data_list, seed, input_len):
    """Stage-2 decode: returns list of decoded bytes."""
    pad = seed & 7
    key = (input_len * 0x83 + seed) & 0xff
    out = []
    for src in data_list:
        val = src ^ key
        rot = ror8(val, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

tests = [
    ("50bbb867", 8),
    ("7bef324abddca8fae727e0a0ccf7", 28),
    ("365ce2f11826bf6d2a598111380b12c2", 32),
]

# Various stage-1 interpretations:
# A) hex decode to bytes: list = bytes
# B) ascii of chars: list = ord of each char
for h, ln in tests:
    hb = binascii.unhexlify(h)
    ascii_l = [ord(c) for c in h]
    print(f"\n===== {h} =====")
    for label, lst in (("hex", hb), ("ascii", ascii_l)):
        for skip in (1, 2):
            if len(lst) > skip:
                seed = lst[0]
                data = lst[skip:]
                out = decode_stage2(data, seed, ln)
                txt = ''.join(chr(c) for c in out)
                print(f"  {label} skip={skip}: {out!r} -> {txt!r}")
