#!/usr/bin/env python3
"""Search for full URLs and domain-like strings, and signing-related strings."""
import re

data = open("/workspace/decrypted_strings.txt", "rb").read()
tokens = re.findall(rb'[\x20-\x7e]{5,}', data)
tokens = [t.decode('latin1') for t in tokens]

print("=== Full URLs / domains ===")
seen = set()
for t in tokens:
    if re.search(r'[a-zA-Z0-9\-]+\.(com|cn|net|top|xyz|app|tv|cc|vip|fun|site|me|io|org)', t) or '://' in t:
        if t not in seen:
            seen.add(t)
            print(t)

print("\n=== sign/secret/key/md5 related ===")
seen = set()
for t in tokens:
    if re.search(r'(sign|secret|key|md5|salt|encrypt|decrypt|nonce|timestamp|params|param|hash)', t, re.I):
        if t not in seen and len(t) < 80:
            seen.add(t)
            print(t)

print("\n=== xdd related ===")
seen = set()
for t in tokens:
    if 'xdd' in t.lower():
        if t not in seen:
            seen.add(t)
            print(t)
