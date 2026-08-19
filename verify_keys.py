#!/usr/bin/env python3
"""Verify signing keys and secret-key strings in decrypted pool."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

all_s = extract_strings("/workspace/decrypted_strings.txt")
for pat in ["7f6702c324815d0e6749c73fda5335b2", "6392886ae1105818e79155165835f2a2",
            "xddappsecretkey", "eGRkYXBwc2VjcmV0a2V5", "xdd"]:
    print(f"--- contains '{pat}' ---")
    for s in all_s:
        if pat in s:
            print("  ", repr(s))

# hex-looking 32-char strings (potential MD5 keys)
print("\n--- 32-hex-char strings (MD5-like) ---")
seen = set()
for s in all_s:
    if re.fullmatch(r"[0-9a-fA-F]{32}", s) and s not in seen:
        seen.add(s)
        print("  ", repr(s))
