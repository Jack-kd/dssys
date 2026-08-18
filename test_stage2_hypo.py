#!/usr/bin/env python3
"""Test specific stage-2 param hypotheses for the blob."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8 - n))) & 0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

def show(b):
    try:
        t = b.decode("utf-8")
        if all(c >= 0x20 or c in (9,10,13) for c in b):
            return repr(t)
    except Exception:
        pass
    return repr(b[:200])

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)
big = strings[0x160d8]
d = dec_hex(big).decode("ascii")
nums = [int(x) for x in d.split(",") if x.strip()]
print(f"nums: {len(nums)}, head: {nums[:12]}")
raw_hex = binascii.unhexlify(big)
print(f"raw hex len: {len(raw_hex)}, stage1 text len: {len(d)}")

def stage2(data, seed, key0, pad, body_off=0):
    out = bytearray()
    key = key0
    for v in data[body_off:]:
        key = (key * 0x83 + seed) & 0xff
        x = v ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

hypotheses = []
# H1: seed=nums[0], key0=nums[1], pad=seed&7, body=nums[2:]
h1 = stage2(nums, nums[0], nums[1], nums[0] & 7, 2)
hypotheses.append(("H1 seed=n0 key=n1 pad=seed&7 off=2", h1))
# H2: seed=nums[0], key0=len(stage1 text), pad=seed&7, off=2
h2 = stage2(nums, nums[0], len(d), nums[0] & 7, 2)
hypotheses.append(("H2 seed=n0 key=len(d) pad off=2", h2))
# H3: seed=nums[0], key0=len(nums), pad=seed&7, off=2
h3 = stage2(nums, nums[0], len(nums), nums[0] & 7, 2)
hypotheses.append(("H3 seed=n0 key=len(nums) pad off=2", h3))
# H4: seed=nums[0], key0=len(raw_hex), pad=seed&7, off=2
h4 = stage2(nums, nums[0], len(raw_hex), nums[0] & 7, 2)
hypotheses.append(("H4 seed=n0 key=len(rawhex) pad off=2", h4))
# H5: seed = nums[0]&7? weird. try seed=50 key0=45 off=0
h5 = stage2(nums, 50, 45, 50 & 7, 0)
hypotheses.append(("H5 seed=50 key=45 off=0", h5))
# H6: seed=45 key=50
h6 = stage2(nums, 45, 50, 45 & 7, 0)
hypotheses.append(("H6 seed=45 key=50 off=0", h6))
# H7: brute-ish over seed from nums head & key0 from nums head
for i in range(min(4, len(nums))):
    for j in range(min(4, len(nums))):
        if i == j:
            continue
        s = nums[i]; k = nums[j]; p = s & 7
        h = stage2(nums, s, k, p, 2)
        hypotheses.append((f"H7 seed=n[{i}]={s} key=n[{j}]={k} off=2", h))
# H8: pad = len(nums)&7
for s in range(0, 3):
    for k0 in (nums[0], nums[1], 45, 50):
        h = stage2(nums, s, k0, len(nums) & 7, 2)
        hypotheses.append((f"H8 seed={s} key={k0} pad=len&7 off=2", h))

seen = set()
for name, h in hypotheses:
    if h in seen:
        continue
    seen.add(h)
    printable = sum(32 <= c < 127 for c in h) / len(h) if h else 0
    print(f"{name:38s} printable={printable:.2f} {show(h)}")
