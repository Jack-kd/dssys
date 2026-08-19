#!/usr/bin/env python3
"""Test: intermediate array = unhexlify bytes; decode with seed=raw[0], key0=raw[1], pad=raw[0]&7."""
import re, binascii

def ror8(x, n):
    n &= 7
    return ((x >> n) | (x << (8 - n))) & 0xff

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)

big = strings[0x160d8]
raw = binascii.unhexlify(big)
print(f"raw: {len(raw)} bytes")
seed = raw[0]; key0 = raw[1]; pad = seed & 7
data = raw[2:]
print(f"seed=0x{seed:02x} key0=0x{key0:02x} pad={pad} data_len={len(data)}")

key = key0
out = bytearray()
for b in data:
    key = (key * 0x83 + seed) & 0xff
    x = b ^ key
    out.append((ror8(x, pad) - seed) & 0xff)

print(f"decoded {len(out)} bytes")
try:
    t = out.decode('utf-8')
    print("UTF-8 decode OK:")
    print(repr(t[:500]))
    print("...")
    print(repr(t[-200:]))
except Exception as e:
    print("utf-8 fail:", e)
    print(repr(out[:200].decode('latin1')))
# printable ratio
pr = sum(1 for c in out if 32 <= c < 127) / len(out)
print(f"printable ratio: {pr:.3f}")
