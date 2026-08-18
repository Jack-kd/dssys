#!/usr/bin/env python3
"""Full decode of pp+0x160d8 -> comma-separated decimal list; analyze the numbers."""
import re, binascii
from collections import Counter

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

txt = out.decode('ascii')
print(f"decoded string len: {len(txt)}")
nums = [int(x) for x in txt.split(',') if x.strip()]
print(f"num count: {len(nums)}")
print(f"min={min(nums)} max={max(nums)}")
print(f"first 40: {nums[:40]}")
print(f"last 20: {nums[-20:]}")

# interpret as bytes -> ascii
try:
    bs = bytes(nums)
    print(f"\nas bytes (len {len(bs)}): {repr(bs[:200])}")
    pr = sum(1 for c in bs if 32 <= c < 127)/len(bs)
    print(f"printable ratio: {pr:.3f}")
except Exception as e:
    print("bytes fail:", e)

# Distribution of values
c = Counter(nums)
print(f"\ndistinct values: {len(c)}")
print(f"top values: {c.most_common(15)}")

# Check patterns: maybe it's base64 chars, or IPs, or a domain encoded by offsets
# Hypothesis: it's a list of indices into a charset string (like obfuscated base64)
# or maybe each number is an XOR of a char
# Let's try: values look like they're in 0..135 range (max?). Print max.
print(f"\nAll nums as sorted unique sample:")
uniq = sorted(set(nums))
print(uniq[:80])
print("...")
print(uniq[-40:])
