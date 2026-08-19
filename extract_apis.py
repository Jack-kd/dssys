#!/usr/bin/env python3
"""Extract network/API-related strings from decrypted strings file."""
import re, sys

data = open("/workspace/decrypted_strings.txt", "rb").read()

# Extract printable ASCII tokens
tokens = re.findall(rb'[\x20-\x7e]{4,}', data)
tokens = [t.decode('latin1') for t in tokens]

patterns = re.compile(
    r'(https?://|ndsx|recommendVideoList|/video|parse_api|sign_|secret|csrf|'
    r'host|domain|baseUrl|api|tian|search|detail|vod|url=|t=|\?id=|appid|'
    r'xdd|key|token|auth)', re.I)

print("=== Network / API related strings ===")
seen = set()
for t in tokens:
    if patterns.search(t) and t not in seen:
        seen.add(t)
        print(t)
