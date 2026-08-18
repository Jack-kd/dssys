#!/usr/bin/env python3
"""Deep-analyze the stage-1 decoded blob (pp+0x160d8)."""
import re, binascii
from collections import Counter

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

big = strings[0x160d8]
print(f"raw hex len: {len(big)} -> {len(big)//2} bytes")
raw = binascii.unhexlify(big)
print(f"raw bytes[0:8]: {raw[:8].hex()}")
out = dec_hex(big)
print(f"stage1 out len: {len(out)}")
cnt = Counter(out)
print(f"distinct bytes: {len(cnt)}")
print(f"byte histogram: {dict(sorted(cnt.items()))}")
mn, mx = min(out), max(out)
print(f"min={mn:#04x} max={mx:#04x}")

# Interpretation A: base-7 digits (byte - 0x40), each in 0..6
vals7 = [b - 0x40 for b in out]
print(f"as -0x40 digits: range {min(vals7)}..{max(vals7)}")

# interpretation B: each byte is 0x40 + digit, pack 3 base-7 digits -> byte
if all(0 <= v <= 6 for v in vals7):
    # group into triples, big-endian base 7
    def pack7(tri):
        n = 0
        for d in tri:
            n = n * 7 + d
        return n
    packed = []
    for i in range(0, len(vals7) - 2, 3):
        packed.append(pack7(vals7[i:i+3]))
    pb = bytes(packed)
    print(f"packed triples -> {len(pb)} bytes")
    print(f"  hex head: {pb[:64].hex()}")
    # ascii
    print(f"  ascii head: {repr(pb[:96].decode('latin1'))}")
    # maybe utf16? try
    print(f"  utf16le head: {repr(pb[:96].decode('utf-16-le', 'replace'))}")

# interpretation C: maybe bytes 0x40-0x46 are actually '0'..'6' + 0x40... no.

# print first 120 chars of stage1 output
print(f"stage1 string head: {repr(out[:160])}")
