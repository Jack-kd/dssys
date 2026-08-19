#!/usr/bin/env python3
"""Inspect the raw pp+0x160d8 string content."""
import re

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)

big = strings[0x160d8]
print(f"raw len: {len(big)}")
print(f"head: {repr(big[:200])}")
print(f"tail: {repr(big[-200:])}")
# character set
from collections import Counter
c = Counter(big)
print(f"distinct chars: {len(c)}")
print(f"chars: {''.join(sorted(c.keys()))!r}")
# check if hex
import binascii
try:
    rb = binascii.unhexlify(big)
    print(f"IS VALID HEX: len {len(big)} -> {len(rb)} bytes")
    print(f"  decoded head: {repr(rb[:120])}")
    # try ascii
    try:
        t = rb.decode('ascii')
        print(f"  ascii decode OK: {repr(t[:300])}")
    except Exception as e:
        print(f"  ascii decode FAIL: {e}")
except Exception as e:
    print(f"NOT valid hex: {e}")
# check if decimal/comma
if ',' in big:
    parts = big.split(',')
    print(f"has commas: {len(parts)} parts, first: {parts[:5]!r}, last: {parts[-3:]!r}")
    try:
        nums = [int(p) for p in parts if p.strip()]
        print(f"  parsed {len(nums)} ints, range {min(nums)}..{max(nums)}")
    except Exception as e:
        print(f"  int parse fail: {e}")
# show whether it's a mix
digits = sum(1 for ch in big if ch in '0123456789')
alpha = sum(1 for ch in big if ch in 'abcdefABCDEF')
print(f"digit count: {digits}, hex-alpha count: {alpha}")
