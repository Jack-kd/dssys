#!/usr/bin/env python3
"""Inspect zlsioh.dat: try zlib at various offsets, scan for domain/url patterns."""
import zlib, re

data = open("/workspace/apk_decode/assets/zlsioh.dat","rb").read()
print("size:", len(data))
print("head32:", data[:32].hex())

# try zlib decompress at candidate offsets
for off in (0, 2, 96, 30412, 30412-1, 1000):
    try:
        d = zlib.decompress(data[off:])
        print(f"zlib ok @{off}: len={len(d)} head={d[:64]!r}")
    except Exception as e:
        print(f"zlib @{off}: {type(e).__name__}")

# brute-force scan for zlib headers 0x78 xx
found = [m.start() for m in re.finditer(b'\x78[\x01\x5e\x9c\xda]', data)]
print("candidate zlib headers:", [hex(x) for x in found[:20]])

# try each
for off in found[:30]:
    try:
        d = zlib.decompress(data[off:])
        if len(d) > 50:
            txt = d.decode('utf-8','replace')
            hits = re.findall(r'https?://[^\s"\']+|[\w.-]+\.[a-z]{2,}(?:/[^\s"\']*)?', txt)
            print(f"zlib @0x{off:x}: len={len(d)} urls={hits[:10]}")
    except Exception:
        pass
