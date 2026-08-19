#!/usr/bin/env python3
"""Decrypt all na.czl records: XOR with first payload byte."""
import re
data = open("/workspace/apk_decode/assets/na.czl", "rb").read()
pat = b"\x00\x01\x01\x00"
positions = [m.start() for m in re.finditer(re.escape(pat), data)]
records = []
for i, p in enumerate(positions):
    end = positions[i+1] if i+1 < len(positions) else len(data)
    rec = data[p:end]
    payload = rec[6:]
    records.append(payload)

print(f"records: {len(records)}")
for idx, payload in enumerate(records):
    key = payload[0]
    dec = bytes(x ^ key for x in payload[1:])
    try:
        s = dec.decode('utf-8')
    except Exception:
        s = repr(dec)
    print(f"[{idx:02d}] key=0x{key:02x}  len={len(payload)-1:3d}  {s!r}")
