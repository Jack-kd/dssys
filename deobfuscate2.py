#!/usr/bin/env python3
"""
Refined deobfuscator for Dart AOT strings (libapp.so).

From disassembly of 0x4ae480 + callees:
1. Input is a hex string; decode pairs of hex chars -> byte array B.
2. seed = B[0]
3. key  = B[1]   (initial key)
4. pad  = seed & 7
5. For each byte d in B[2:]:
     key = (key * 0x83 + seed) & 0xff
     x   = d ^ key
     rot = ROR8(x, pad)          # rotate right by pad
     out = (rot - seed) & 0xff
   Append out.
6. Return the byte string.

ROR8(x, n) = ((x >> n) | (x << (8 - n))) & 0xff   with n = n & 7
"""

import binascii, re, sys

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
    # try utf-8
    try:
        t = b.decode("utf-8")
        if all(0x20 <= c < 0x7f or c in (0x0a,0x0d,0x09) for c in b) or any(c > 0x7f for c in b):
            return repr(t)
    except Exception:
        pass
    # printable ascii check
    printable = all(0x20 <= c < 0x7f for c in b)
    if printable:
        return repr(b.decode("latin-1"))
    return "bytes(" + b.hex() + ")"

# 1. hand-picked candidates from earlier tests
tests = [
    "365ce2f11826bf6d2a598111380b12c2",
    "1015b78404a1800fbe5a536464c1",
    "9a79b1e535aec2adb539dd6575e68241f9cd3d0da595",
    "4f3795f48de5d2",
    "5c8662fd32cb159ad3aa951df26a026a522af29de39aa27a32bda22a951b95eb521af2",
    "f5cf8fd0aaca01df02",
    "4d65841767e5120eef5a7b297758823e",
    "8343e320dfd43b0a0ff43bf0",
    "894f05822782e5",
    "2a6d9b270f77937b73f3",
    "6f75a1b492acecee82ab70db005d873d8dfb",
    "6f1d282b436e1100",
    "47383ac0de84",
    "1c016881ef99",
    "84148df9ad79",
    "0e8f59",
    "a65d3a983f1cfe5f",
    "e1ba9b04",
    "a2202ef0864cf66016f8fe1066539a58ce",
    "7d539adebbe7b8b3",
    "43851b1731ec949f1f5a2410c9334b6f009c6d4787aaede0412523cf907ce43f9fa3942018cd739628043cff070a94b01943",
    "dc5d3f8d9ef144d35764aa89cdcb",
    "a7ffaf9a64d77a977b00502e1550afafad9182bf4d0d57b1df",
    "5fedc2b0",
    "bf07cdafe99a7e",
    "f955bb206a0ccb90f9ca36ec7d6a",
    "50bbb867",
    "7bef324abddca8fae727e0a0ccf7",
]
print("=== Hand-picked candidates ===")
for h in tests:
    b = deobfuscate_hex(h)
    print(f"{h[:44]:<46} -> {pretty(b)}")

# 2. all hex-looking strings in pp.txt (>= 8 chars, only hex digits)
print("\n=== Hex strings from pp.txt that decode to readable text ===")
hexre = re.compile(r'"([0-9a-fA-F]{8,})"')
seen = set()
count = 0
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
        count += 1
        # show if mostly readable
        try:
            t = b.decode("utf-8")
        except Exception:
            t = None
        if t is not None:
            print(f"{h[:50]:<52} -> {t!r}")
print(f"\nTotal hex strings found & decoded: {count}")
