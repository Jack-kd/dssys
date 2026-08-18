#!/usr/bin/env python3
"""Analyze na.czl: try XOR keys, look for URL/JSON content."""
import sys, string

data = open("/workspace/apk_decode/assets/na.czl", "rb").read()
print(f"file size: {len(data)}")
print(f"first 16 bytes: {data[:16].hex()}")

def printable_ratio(b):
    if not b:
        return 0
    ok = sum(1 for x in b if 32 <= x < 127 or x in (9,10,13))
    return ok / len(b)

# 1. single byte XOR brute force
best = []
for k in range(256):
    dec = bytes(x ^ k for x in data)
    ratio = printable_ratio(dec)
    if ratio > 0.8:
        # check if looks like text with spaces
        spaces = dec.count(b" ")
        best.append((ratio, k, dec, spaces))

best.sort(reverse=True, key=lambda t: t[0])
print("\n=== single-byte XOR candidates (ratio>0.8) ===")
for ratio, k, dec, spaces in best[:8]:
    print(f"key=0x{k:02x} ratio={ratio:.2f} spaces={spaces}")
    print(f"   head: {dec[:120]!r}")
    # print URL-looking lines
    import re
    for m in re.finditer(rb'[ -~]{4,}', dec):
        pass
