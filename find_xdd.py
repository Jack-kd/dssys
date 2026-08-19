#!/usr/bin/env python3
"""Grep decrypted strings for xdd / domain suffix hints."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

all_s = extract_strings("/workspace/decrypted_strings.txt")
print("=== strings containing 'xdd' (case-insensitive) ===")
for s in all_s:
    if "xdd" in s.lower():
        print(" ", repr(s))

print("\n=== strings that look like domain parts (letters+dot letters) ===")
for s in all_s:
    if re.fullmatch(r"[a-zA-Z0-9][a-zA-Z0-9\-]*(\.[a-zA-Z0-9\-]+)+", s) and len(s) > 5:
        print(" ", repr(s))
