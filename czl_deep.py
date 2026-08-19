#!/usr/bin/env python3
"""Analyze na.czl structure: byte histogram, entropy, header analysis."""
import collections, math

data = open("/workspace/apk_decode/assets/na.czl", "rb").read()
print(f"size: {len(data)}")
print(f"header 32 bytes: {data[:32].hex()}")
print(f"last 16 bytes: {data[-16:].hex()}")

# byte histogram of body
body = data
hist = collections.Counter(body)
print(f"\nunique bytes: {len(hist)} / 256")
print("most common:", hist.most_common(12))

# entropy
import math
ent = -sum((c/len(body)) * math.log2(c/len(body)) for c in hist.values())
print(f"entropy: {ent:.3f} bits/byte")

# check for length-prefixed string structures / JSON
print("\n=== look for 'http'/'json'/'url' ASCII in raw ===")
import re
for m in re.finditer(rb'[ -~]{5,}', data):
    s = m.group().decode('latin1')
    if re.search(r'(?i)http|url|json|api|host|\.com|\.cn|\.top|domain|config|key|sign|secret', s):
        print(f"@0x{m.start():x}: {s[:100]}")

# try: maybe first bytes are key/IV for a stream cipher; try XOR with repeating patterns
print("\n=== XOR with 0x10..0x3f single byte and print any readable ===")
for k in range(0x10, 0x40):
    dec = bytes(x ^ k for x in data)
    if all(32 <= x < 127 or x in (9,10,13,0) for x in dec[:40]):
        print(f"key 0x{k:02x} head: {dec[:80]!r}")
