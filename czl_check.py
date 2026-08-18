#!/usr/bin/env python3
"""Check if Dart snapshot references asset filenames; dump na.czl records precisely."""
import re
data = open("/workspace/decrypted_strings.txt", "rb").read()
tokens = re.findall(rb'[\x20-\x7e]{4,}', data)
tokens = [t.decode('latin1') for t in tokens]

print("=== asset-file / resource related strings ===")
for t in tokens:
    if re.search(r'(\.czl|zlsioh|\.dat|\.json|assets/|asset|rootBundle|loadString|flutter_assets|\.png|\.mp4|\.m3u8)', t, re.I):
        print(repr(t))

print("\n=== na.czl byte dump first 80 ===")
f = open("/workspace/apk_decode/assets/na.czl", "rb").read()
for i in range(0, min(80, len(f)), 16):
    chunk = f[i:i+16]
    hexs = ' '.join(f'{b:02x}' for b in chunk)
    asc = ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk)
    print(f"{i:04x}  {hexs:<48}  {asc}")
