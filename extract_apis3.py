#!/usr/bin/env python3
"""Search ALL decrypted strings for potential domains and 'xdd' variants."""
import re

data = open("/workspace/decrypted_strings.txt", "rb").read()
tokens = re.findall(rb'[\x20-\x7e]{3,}', data)
tokens = [t.decode('latin1') for t in tokens]

print("=== xdd variants ===")
for t in tokens:
    if 'xdd' in t.lower():
        print(repr(t))

print("\n=== tokens containing dots (potential domain fragments) ===")
for t in tokens:
    if '.' in t and not re.search(r'\s', t):
        print(repr(t))

print("\n=== all tokens containing 'http' ===")
for t in tokens:
    if 'http' in t.lower():
        print(repr(t))

print("\n=== tokens that look like domain names (letters+digits, 4-40 chars, no spaces) ===")
import string
for t in tokens:
    if len(t) >= 4 and len(t) <= 45 and re.fullmatch(r'[a-zA-Z0-9][a-zA-Z0-9\-\.]*[a-zA-Z0-9]', t):
        # heuristic: contains a known TLD or 'cdn'/'api'/'app' etc
        if re.search(r'(\.(com|cn|net|top|xyz|app|tv|cc|vip|fun|site|me|io|org|api|api|tech|online|club|biz|info)$)|^(api|app|cdn|www|m|vod|v|video|img|pic|imgs|static|cdn|cdn1|data|dl|down|h5|web|www)', t.lower()):
            print(repr(t))
