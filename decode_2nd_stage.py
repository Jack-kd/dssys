#!/usr/bin/env python3
"""Brute-force second-stage decode of the 0x160d8 blob's 915-byte array."""
import re, binascii

def ror8(x, n):
    n &= 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for b in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

# get blob
strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)
big = strings[0x160d8]
d = dec_hex(big).decode("ascii", "replace")
nums = [int(x) for x in d.split(",") if x.strip()]
data = bytes(nums)
n = len(data)
print(f"n={n}  pad=n&7={n&7}")

def decode(data, key0, seed, pad):
    key = key0
    out = bytearray()
    for b in data:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

def score(b):
    return sum(1 for x in b if 32 <= x < 127) / len(b)

pads = [n & 7, 3]
seeds = [n & 0xff, n, 0]
results = []
for pad in [n & 7]:
    for seed in seeds:
        for key0 in range(256):
            out = decode(data, key0, seed, pad)
            s = score(out)
            results.append((s, key0, seed, pad, out))

results.sort(key=lambda r: -r[0])
print("top candidates:")
for s, key0, seed, pad, out in results[:8]:
    try:
        t = out.decode("utf-8")
        disp = repr(t[:120])
    except Exception:
        disp = repr(out[:120].decode("latin1"))
    print(f"  key0=0x{key0:02x} seed={seed} pad={pad} score={s:.3f}: {disp}")

# also print best with full text
best = results[0]
print("\nBEST full decode:")
try:
    print(best[4].decode("utf-8", "replace"))
except Exception:
    print(best[4].decode("latin1"))
