#!/usr/bin/env python3
"""Full decode chain for pp+0x160d8:
hex string -> dec_hex (custom) -> ASCII decimal list -> bytes -> interpret.
"""
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

big = strings.get(0x160d8)
stage1 = dec_hex(big)
print("stage1 (dec_hex) len:", len(stage1))
print("stage1 head:", stage1[:160])
print("stage1 tail:", stage1[-160:])

# stage 2: parse ASCII decimal list
text = stage1.decode("ascii", "replace")
nums = [int(x) for x in text.split(",") if x.strip()]
print("\nnums count:", len(nums))
raw = bytes(nums)
print("raw bytes len:", len(raw))
print("raw head:", raw[:120])
print("raw tail:", raw[-80:])

# interpret as ascii
print("\nas latin1:")
print(repr(raw[:400].decode("latin1")))

# try gzip/zlib on raw
import zlib
for wbits in [15, -15, 31]:
    try:
        d = zlib.decompress(raw, wbits)
        print(f"\nzlib wbits={wbits} len={len(d)}")
        print("head:", d[:200])
        break
    except Exception as e:
        pass

# try XOR variants
for k in range(256):
    d = bytes(b ^ k for b in raw)
    if all(0x20 <= c < 0x7f or c in (10,13,9,0) for c in d[:200]):
        print(f"\nXOR 0x{k:02x} printable head:")
        print("  ", d[:200])
