#!/usr/bin/env python3
"""Decode the cluster of hex strings 0x160c8-0x16168 with dec_hex."""
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

offs = [0x160c8, 0x160d8, 0x160e8, 0x160f0, 0x160f8, 0x16100, 0x16108, 0x16110,
        0x16118, 0x16120, 0x16130, 0x16138, 0x16140, 0x16150, 0x16158, 0x16160, 0x16168]
for off in offs:
    v = strings.get(off)
    if v is None:
        print(f"pp+0x{off:x}: (none)")
        continue
    try:
        d = dec_hex(v)
        # pretty print: if printable show ascii else show repr + hex head
        if all(0x20 <= c < 0x7f or c in (10,13,9) for c in d):
            print(f"pp+0x{off:x} ({len(v)//2}B -> {len(d)}B): {d.decode('latin1')!r}")
        else:
            print(f"pp+0x{off:x} ({len(v)//2}B -> {len(d)}B): raw={d[:60]!r}")
    except Exception as e:
        print(f"pp+0x{off:x}: decode error {e} | head={v[:40]}")
