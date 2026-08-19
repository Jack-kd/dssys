#!/usr/bin/env python3
"""Get the final 915-byte payload from _Ajg (pp+0x160d8) and test
if it's an RSA public key (mod + exp) or something else."""
import binascii, re

def ror8(x,n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff

def deob_hex(s):
    raw = binascii.unhexlify(s)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for b in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

# find pp+0x160d8
strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

s1 = strings[0x160d8]
stage1 = deob_hex(s1)
print(f"Stage1 (pp decode): {len(stage1)} bytes")
print(f"Head: {stage1[:80]}")

# parse comma-separated decimal into bytes -> final 915 bytes
txt = stage1.decode('ascii')
nums = [int(x.strip()) for x in txt.split(',') if x.strip()]
print(f"\nParsed {len(nums)} integers")
payload = bytes(nums)
print(f"Final payload: {len(payload)} bytes")
print(f"hex head: {payload.hex()[:160]}")

# try to see if it's base64 or PEM or just text
try:
    txt_p = payload.decode('ascii')
    print(f"\nAs ASCII (first 400 chars):\n{txt_p[:400]}")
except:
    print("\nNot ASCII text")

# check for RSA modulus/exponent: big-endian vs little-endian big integer
import sys
def to_bigint(b):
    val = 0
    for c in b:
        val = (val << 8) | c
    return val
print(f"\nFirst 20 bytes: {list(payload[:20])}")
print(f"Last 20 bytes: {list(payload[-20:])}")
# histogram of byte values
from collections import Counter
cnt = Counter(payload)
print(f"\nTop 15 byte values:")
for v, c in cnt.most_common(15):
    print(f"  0x{v:02x} '{chr(v) if 32<=v<127 else '.'}': {c} times")

# test if it's printable all
all_print = all(32 <= c < 127 or c in (10,13) for c in payload)
print(f"\nAll printable? {all_print}")
