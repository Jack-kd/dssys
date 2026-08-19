#!/usr/bin/env python3
"""Decode key strings with correct dec_hex and dump blob stage1 fully."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

for h in ["ebbf48f20d2ee96bfc2e68aaa57ec1",
          "7f6702c324815d0e6749c73fda5335b2",
          "6392886ae1105818e79155165835f2a2",
          "365ce2f11826bf6d2a598111380b12c2"]:
    b = dec_hex(h)
    print(f"{h}: raw_hex={binascii.unhexlify(h).hex()} -> {b!r}")

# dump full blob stage1
strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)
big = strings[0x160d8]
d = dec_hex(big)
print(f"\nblob stage1 ({len(d)} bytes): {repr(d.decode('latin1'))}")
