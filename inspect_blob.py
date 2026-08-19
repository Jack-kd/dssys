#!/usr/bin/env python3
"""Inspect the raw huge blob at pp+0x160d8 structure."""
import re

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

big = strings.get(0x160d8)
print("len =", len(big))
print("head:", repr(big[:300]))
print("tail:", repr(big[-300:]))

# split by comma, analyze token types
tokens = big.split(",")
print("\ntoken count:", len(tokens))
import collections
cats = collections.Counter()
for t in tokens[:200]:
    t = t.strip()
    if t.isdigit():
        cats['digit'] += 1
    elif re.fullmatch(r"[0-9a-fA-F]+", t):
        cats['hex'] += 1
    else:
        cats['other'] += 1
print("token categories (first 200):", dict(cats))

# print first 40 tokens raw
print("\nfirst 40 tokens:", tokens[:40])
# print tokens 100-140
print("tokens 100-140:", tokens[100:140])
# find where digits end
first_non_digit = 0
for i, t in enumerate(tokens):
    t = t.strip()
    if not t.isdigit():
        first_non_digit = i
        break
print("\nfirst non-digit token index:", first_non_digit)
print("tokens around there:", tokens[max(0,first_non_digit-5):first_non_digit+5])
