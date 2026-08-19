#!/usr/bin/env python3
"""Brute-force second-stage decode params for pp+0x160d8 (corrected stage-1)."""
import re, binascii
import numpy as np

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8 - n))) & 0xff

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
d = dec_hex(big).decode("ascii")
nums = [int(x) for x in d.split(",") if x.strip()]
print(f"stage1: {len(d)} chars -> {len(nums)} numbers, range {min(nums)}..{max(nums)}")
data = np.array(nums, dtype=np.uint64)

def ror8v(x, pad):
    x = x & 0xff
    return ((x >> pad) | (x << (8 - pad))) & 0xff

all_cands = []
for body_off in (0, 1, 2):
    body = data[body_off:]
    m = len(body)
    print(f"body_off={body_off} m={m}", flush=True)
    for seed in range(256):
        keys = np.empty((256, m), dtype=np.uint64)
        keys[:, 0] = np.arange(256, dtype=np.uint64)
        for i in range(1, m):
            keys[:, i] = (keys[:, i-1] * 0x83 + seed) & 0xff
        x = (keys ^ body[None, :]) & 0xff
        for pad in range(8):
            out = (ror8v(x, pad) - seed) & 0xff
            printable = ((out >= 32) & (out < 127)).sum(axis=1).astype(float) / m
            bi = int(np.argmax(printable))
            if printable[bi] > 0.90:
                all_cands.append((printable[bi], body_off, pad, seed, bi, out[bi].tobytes()))
all_cands.sort(key=lambda r: -r[0])
print(f"\ntotal candidates >90%: {len(all_cands)}")
for score, bo, pad, seed, k0, s in all_cands[:12]:
    print(f"  off={bo} pad={pad} seed={seed} key0={k0} score={score:.3f}: {repr(s[:200])}")
