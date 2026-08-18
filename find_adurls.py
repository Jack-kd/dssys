#!/usr/bin/env python3
"""Look for appad / config URL and any domain-source strings."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

all_s = extract_strings("/workspace/decrypted_strings.txt")
print("=== appad / config / update / ad URL hints ===")
for s in all_s:
    low = s.lower()
    if "appad" in low or "advert" in low or "updatead" in low or "myqcloud" in low or "bcebos" in low or "config" in low and ("http" in low or "/" in low):
        print(" ", repr(s))

print("\n=== all strings with '://' ===")
for s in all_s:
    if "://" in s:
        print(" ", repr(s))

print("\n=== raw libapp.so http(s) URLs (full) ===")
with open("/workspace/extract/libapp.so", "rb") as f:
    data = f.read()
seen = set()
for m in re.finditer(rb"https?://[^\x00\s\"'<>]{3,120}", data):
    u = m.group(0).decode("ascii", "replace")
    if u not in seen:
        seen.add(u)
        print(" ", repr(u))
