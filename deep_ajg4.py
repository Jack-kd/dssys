#!/usr/bin/env python3
"""Analyze _Ajg 915-byte blob: try UTF-8 decode, look for structure (URLs, base64, json)."""
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
print("len:", len(b))

# UTF-8 decode
try:
    t = b.decode('utf-8')
    print("\n=== UTF-8 decode ===")
    print(repr(t[:500]))
except Exception as e:
    print("utf-8 fail:", e)

# show byte values >127 and surrounding
print("\n=== bytes >127 ===")
for i, c in enumerate(b):
    if c > 127:
        print(f"  [{i}] 0x{c:02x} ctx={repr(b[max(0,i-4):i+5])}")

# check if ':' appears (URL separator)
print("\n':' positions:", [i for i,c in enumerate(b) if c==ord(':')])
print("'/' positions:", [i for i,c in enumerate(b) if c==ord('/')])
print("'?' positions:", [i for i,c in enumerate(b) if c==ord('?')])
print("'.' positions:", [i for i,c in enumerate(b) if c==ord('.')])

# histogram of all distinct values
import collections
cnt = collections.Counter(b)
print("\nmost common:", cnt.most_common(15))
