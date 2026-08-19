#!/usr/bin/env python3
"""Find callers of the _Ajg getter 0x48e61c, and print decoded payload with positions."""
import re, binascii

def ror8(x, n):
    n &= 7
    return ((x >> n) | (x << (8 - n))) & 0xff

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)

big = strings[0x160d8]
raw = binascii.unhexlify(big)
seed = raw[0]; key0 = raw[1]; pad = seed & 7
data = raw[2:]
key = key0
out = bytearray()
for b in data:
    key = (key * 0x83 + seed) & 0xff
    x = b ^ key
    out.append((ror8(x, pad) - seed) & 0xff)

payload = bytes(out)
print(f"payload {len(payload)} bytes")
# print as text with line breaks for readability
for i in range(0, len(payload), 64):
    print(f"{i:4d}: {payload[i:i+64]!r}")
