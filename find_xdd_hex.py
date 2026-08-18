#!/usr/bin/env python3
"""Find PP offsets of hex strings whose dec_hex output contains 'xdd' or 'http'."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff

def dec_hex(h):
    rawb = binascii.unhexlify(h)
    seed=rawb[0]; key=rawb[1]; pad=seed&7; out=bytearray()
    for b in rawb[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

for off, v in sorted(strings.items()):
    if len(v) < 8 or not re.fullmatch(r"[0-9a-fA-F]+", v):
        continue
    if len(v) % 2:
        continue
    try:
        d = dec_hex(v)
    except Exception:
        continue
    low = d.lower()
    if b'xdd' in low or b'http' in low:
        print(f"pp+0x{off:x} ({len(v)//2}B): {d!r}")
