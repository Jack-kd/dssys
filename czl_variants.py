#!/usr/bin/env python3
"""Brute-force deobfuscation variants on na.czl records."""
import re

data = open("/workspace/apk_decode/assets/na.czl", "rb").read()
pat = b"\x00\x01\x01\x00"
positions = [m.start() for m in re.finditer(re.escape(pat), data)]
records = []
for i, p in enumerate(positions):
    end = positions[i+1] if i+1 < len(positions) else len(data)
    rec = data[p:end]
    # header 6 bytes, payload after
    payload = rec[6:]
    records.append(payload)

print(f"records: {len(records)}")

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def rol8(x, n):
    n = n & 7
    return ((x << n) | (x >> (8 - n))) & 0xff

def printable_ratio(b):
    if not b:
        return 0
    ok = sum(1 for x in b if 32 <= x < 127 or x in (9,10,13))
    return ok / len(b)

variants = {}
# v0: key=key*0x83+seed ; x=byte^key ; ror(x,seed&7) ; -seed
# v1: -seed&7 instead of -seed
# v2: key=key+seed
# v3: key=key+seed ; -seed
# v4: key=key*0x83+seed&7
# v5: key=key*0x83+seed&7 ; -seed&7
# v6: no ror
# v7: rol

def dec(payload, variant):
    seed = payload[0]
    key = payload[1]
    pad = seed & 7
    out = bytearray()
    for byte in payload[2:]:
        if variant in (0,1,6,7):
            key = (key * 0x83 + seed) & 0xff
        elif variant in (2,3):
            key = (key + seed) & 0xff
        else:  # 4,5
            key = (key * 0x83 + (seed & 7)) & 0xff
        x = byte ^ key
        if variant in (0,1,4,5):
            rot = ror8(x, pad)
        elif variant == 7:
            rot = rol8(x, pad)
        else:  # 6
            rot = x
        if variant in (1,5):
            out.append((rot - (seed & 7)) & 0xff)
        else:
            out.append((rot - seed) & 0xff)
    return bytes(out)

for v in range(8):
    ratios = [printable_ratio(dec(p, v)) for p in records]
    avg = sum(ratios)/len(ratios)
    # show head of best record
    best = max(records, key=lambda p: printable_ratio(dec(p, v)))
    print(f"variant {v}: avg_printable={avg:.3f}  best={printable_ratio(dec(best,v)):.3f}  best_dec={dec(best,v)[:60]!r}")
