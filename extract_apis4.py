#!/usr/bin/env python3
"""Search decrypted strings for embedded JSON/config-like content."""
import re
data = open("/workspace/decrypted_strings.txt", "rb").read()
tokens = re.findall(rb'[\x20-\x7e]{4,}', data)
tokens = [t.decode('latin1') for t in tokens]

print("=== JSON-like / config-like strings (long, contain : or = or /) ===")
seen = set()
for t in tokens:
    if len(t) >= 12 and ('":"' in t or '":"' in t or '=' in t or re.search(r'\w+[:=]\w+', t)) and '{' not in t and not t.startswith('video'):
        if t not in seen and t not in ('videoName as vod_name','videoImage as vod_pic','id as vod_id'):
            seen.add(t)
            print(repr(t))

print("\n=== all decrypted strings starting with '{' (JSON) ===")
for t in tokens:
    if t.startswith('{'):
        print(repr(t[:200]))

print("\n=== strings containing 'xdd' or 'ndsx' or 'maccms' ===")
for t in tokens:
    if re.search(r'xdd|ndsx|maccms|tianapi|json|cms|v[0-9]+/', t, re.I):
        print(repr(t))
