#!/usr/bin/env python3
"""Split na.czl into records by header pattern and try deobfuscation on each."""
import binascii, re

data = open("/workspace/apk_decode/assets/na.czl", "rb").read()
pat = b"\x00\x01\x01\x00"
positions = [m.start() for m in re.finditer(re.escape(pat), data)]
print(f"header positions: {[hex(p) for p in positions]}")

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate(raw):
    """Dart _dMg-style: seed=raw[0], key=raw[1], then key=key*0x83+seed; x=byte^key; ror(x,seed&7); -seed"""
    if len(raw) < 2:
        return None
    seed = raw[0]
    key = raw[1]
    pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        rot = ror8(x, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

# split records
records = []
for i, p in enumerate(positions):
    end = positions[i+1] if i+1 < len(positions) else len(data)
    records.append((p, data[p:end]))

print(f"\ntotal records: {len(records)}")
for p, rec in records:
    hdr = rec[:6]
    payload = rec[6:]
    print(f"\n--- record @0x{p:x} header={hdr.hex()} payload_len={len(payload)} ---")
    print(f"  payload[:32]: {payload[:32].hex()}")
    dec = deobfuscate(payload)
    if dec:
        printable = sum(1 for x in dec if 32 <= x < 127 or x in (9,10,13))
        print(f"  deobfuscated len={len(dec)} printable={printable}/{len(dec)}")
        print(f"  dec: {dec[:120]!r}")
