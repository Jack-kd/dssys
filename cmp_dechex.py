#!/usr/bin/env python3
"""Compare the two dec_hex variants to find the discrepancy."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff

def dec_hex_a(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

def dec_hex_b(h):
    raw = binascii.unhexlify(h)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for b in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((((x >> pad) | (x << (8 - pad))) & 0xff - seed) & 0xff)
    return bytes(out)

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

big = strings[0x160d8]
a = dec_hex_a(big)
b = dec_hex_b(big)
print(f"len A={len(a)} B={len(b)}")
print(f"A head: {a[:80]!r}")
print(f"B head: {b[:80]!r}")
print(f"equal: {a == b}")
# show raw hex head for manual inspection
print(f"big head: {big[:80]}")
