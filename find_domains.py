#!/usr/bin/env python3
"""Search decrypted strings for full URLs / domains / host patterns."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

seen = set()
for path in ["/workspace/decrypted_strings.txt"]:
    for s in extract_strings(path):
        low = s.lower()
        # full URLs, domains, or xdd variants
        if ("://" in s or "." in s and ("com" in low or "cn" in low or "net" in low or "top" in low or "xdd" in low)
                or "xdd" in low or "appad" in low or "myqcloud" in low or "bcebos" in low):
            if s not in seen:
                seen.add(s)
                print(repr(s))

# Also scan raw binary for ASCII domain-looking strings across the whole libapp.so
print("\n=== domains in libapp.so raw ===")
with open("/workspace/extract/libapp.so", "rb") as f:
    data = f.read()
dom = set()
for m in re.finditer(rb"https?://[A-Za-z0-9._\-]+", data):
    dom.add(m.group(0).decode("ascii"))
for d in sorted(dom):
    print(repr(d))
