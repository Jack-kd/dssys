#!/usr/bin/env python3
"""Decode a contiguous region of hex Strings from pp.txt (config/key area)."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    if len(h) % 2 or len(h) < 4:
        return None
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

# parse all
entries = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]", line)
        if not m:
            continue
        off = int(m.group(1), 16)
        if not (0x14e00 <= off <= 0x15000 or 0x16000 <= off <= 0x16300 or 0x17c00 <= off <= 0x17e50):
            continue
        hm = re.search(r'String:\s+.*?"([0-9a-fA-F]+)"', line)
        if not hm:
            continue
        h = hm.group(1).lower()
        b = dec_hex(h)
        if b is None:
            continue
        try:
            t = b.decode("utf-8")
        except Exception:
            t = None
        flag = ""
        if t and any(c < 0x20 and c not in (9,10,13) for c in b):
            flag = " [b64/raw]"
        print(f"pp+0x{off:04x}: {t!r}{flag}" if t else f"pp+0x{off:04x}: hex={h}")