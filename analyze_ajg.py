#!/usr/bin/env python3
"""Analyze the _Ajg byte array: search for URL patterns, try repeating-key XOR."""
import re, binascii

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

d = dec_hex(strings[0x160d8]).decode('ascii')
nums = [int(x) for x in d.split(',') if x.strip()]
b = bytes(nums)
print("byte len:", len(b))

# 1) search for URL-ish substrings in the raw byte array
for pat in [b'http', b'https', b'://', b'.php', b'.com', b'xdd', b'/', b'.', b'api', b'ndsx']:
    idxs = [i for i in range(len(b)) if b.startswith(pat, i)]
    if idxs:
        print(f"pattern {pat!r}: {len(idxs)} hits, first few at {idxs[:6]}")

# 2) try repeating-key XOR with key length 1..24, score = printable ratio + structure
def score(d):
    return sum(1 for c in d if 32 <= c < 127) / len(d)

best = []
for klen in range(1, 33):
    for key in range(1 << (8*klen)):
        break
    # instead of brute force all keys, find key for each length via frequency-based approach:
    # assume plaintext is mostly printable; for each key byte position, find byte that
    # maximizes printable count at that position
    key = bytearray()
    for pos in range(klen):
        bestb, bestc = 0, -1
        for kb in range(256):
            cnt = 0
            for i in range(pos, len(b), klen):
                c = b[i] ^ kb
                if 32 <= c < 127:
                    cnt += 1
            if cnt > bestc:
                bestc, bestb = cnt, kb
        key.append(bestb)
    dec = bytes(b[i] ^ key[i % klen] for i in range(len(b)))
    s = score(dec)
    best.append((s, klen, bytes(key), dec))

best.sort(key=lambda r: -r[0])
for s, klen, key, dec in best[:6]:
    print(f"\nklen={klen} key={key!r} score={s:.3f}")
    print("   ", repr(dec[:200]))
