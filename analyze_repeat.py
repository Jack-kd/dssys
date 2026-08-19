#!/usr/bin/env python3
"""Analyze repeating structure of the 915-byte _Ajg payload."""
import binascii, re
from collections import Counter

def ror8(x,n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff

def deob_hex(s):
    raw = binascii.unhexlify(s)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for b in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

stage1 = deob_hex(strings[0x160d8])
nums = [int(x.strip()) for x in stage1.decode('ascii').split(',') if x.strip()]
payload = bytes(nums)

# 1) exact autocorrelation: shift s, count positions where payload[i]==payload[i+s]
print("=== exact-match autocorrelation (top shifts) ===")
n = len(payload)
scores = []
for s in range(1, 60):
    match = sum(1 for i in range(n - s) if payload[i] == payload[i+s])
    scores.append((match, s))
scores.sort(reverse=True)
for m, s in scores[:15]:
    print(f"  shift {s}: {m} matches (expect ~{n/256:.1f} if random)")

# 2) longest repeated substrings
print("\n=== longest repeated substrings ===")
def lrs(data, minlen=6):
    best = {}
    for i in range(len(data)):
        for j in range(i+minlen, len(data)):
            # extend
            k = 0
            while i+k < len(data) and j+k < len(data) and data[i+k]==data[j+k]:
                k += 1
            if k >= minlen:
                sub = bytes(data[i:i+k])
                best.setdefault(sub, []).append((i,j))
    return best
# limit for speed: use suffix approach on first 600 bytes
d = payload[:600]
found = {}
for i in range(len(d)):
    for j in range(i+4, len(d)):
        k = 0
        while i+k < len(d) and j+k < len(d) and d[i+k]==d[j+k]:
            k += 1
        if k >= 8:
            sub = bytes(d[i:i+k])
            found[sub] = found.get(sub, 0) + 1
top = sorted(found.items(), key=lambda kv: -len(kv[0]))[:12]
for sub, cnt in top:
    print(f"  len={len(sub)} x{cnt}: {''.join(chr(c) if 32<=c<127 else '.' for c in sub)}")

# 3) interleave test: odd/even positions
print("\n=== odd/even interleaved streams (as +32 text) ===")
even = bytes(payload[0::2])
odd = bytes(payload[1::2])
print(f"  even ({len(even)}): {''.join(chr(c+32) if c+32<127 else '?' for c in even)[:120]}")
print(f"  odd  ({len(odd)}): {''.join(chr(c+32) if c+32<127 else '?' for c in odd)[:120]}")

# 4) try difference-based: maybe payload[i] = plaintext[i] - key[i], try cumulative
print("\n=== delta analysis (payload[i]-payload[i-1]) ===")
deltas = [(payload[i]-payload[i-1]) & 0xff for i in range(1, n)]
d_str = ''.join(chr(d+32) if 32<=d+32<127 else '.' for d in deltas)
print(f"  delta+32: {d_str[:160]}")
