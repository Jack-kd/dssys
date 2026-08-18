#!/usr/bin/env python3
"""Cryptoanalysis of the 915-byte _Ajg payload.
1) single-byte XOR scan
2) repeating-key XOR (Kasiski) 
3) try known keys
"""
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

def printable_ratio(b):
    return sum(1 for c in b if 32 <= c < 127 or c in (10,13,9))/len(b)

# 1) single byte xor
print("=== single-byte XOR: keys with high printable ratio ===")
results = []
for k in range(256):
    dec = bytes(c ^ k for c in payload)
    pr = printable_ratio(dec)
    has_url = b'http' in dec or b'www.' in dec
    has_dot_slash = (b'.' in dec and b'/' in dec)
    results.append((pr, has_url, k, dec))
results.sort(reverse=True)
for pr, hu, k, dec in results[:10]:
    txt = ''.join(chr(c) if 32<=c<127 else '.' for c in dec)
    print(f"  key=0x{k:02x} pr={pr:.3f} url={hu} -> {txt[:80]!r}")

# 2) try known key xddappsecretkey (base64 'eGRkYXBwc2VjcmV0a2V5') as repeating xor
import base64
k = base64.b64decode('eGRkYXBwc2VjcmV0a2V5')
print("\n=== xor with xddappsecretkey (repeating) ===")
dec = bytes(payload[i] ^ k[i % len(k)] for i in range(len(payload)))
print("  pr=%.3f" % printable_ratio(dec))
txt = ''.join(chr(c) if 32<=c<127 else '.' for c in dec)
print(f"  {txt[:200]}")

# 3) Kasiski for repeating key lengths
print("\n=== Kasiski (repeating key) ===")
best = []
for period in range(2, 33):
    # index of coincidence per column
    n = len(payload)
    ics = []
    for col in range(period):
        colbytes = payload[col::period]
        if len(colbytes) < 10: continue
        cnt = Counter(colbytes)
        ic = sum(v*(v-1) for v in cnt.values()) / (len(colbytes)*(len(colbytes)-1))
        ics.append(ic)
    avg_ic = sum(ics)/len(ics) if ics else 0
    best.append((avg_ic, period))
best.sort(reverse=True)
for ic, p in best[:10]:
    print(f"  period={p}: avg IC={ic:.4f} (English ~0.066, random ~0.016)")

# 4) test if each byte is a permutation index into a 128-charset (printable ascii)
print("\n=== check: payload as indices into a charset ===")
# If payload[i] indexes into 'ascii printable' with an offset 33: char = chr(payload[i]+33)
# payload values 10-133. If charset = chr(33..126) (94 chars), index 0..93. payload up to 133 > 93.
# try chr(payload[i]+32):
cand = ''.join(chr(c+32) if 0<=c+32<127 else '?' for c in payload)
print(f"  +32: {cand[:150]}")
