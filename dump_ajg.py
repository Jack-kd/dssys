#!/usr/bin/env python3
"""Dump the full _Ajg byte array and try several interpretations."""
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
print("byte array len:", len(b))
print("values range:", min(b), "..", max(b))
import collections
print("histogram:", collections.Counter(b).most_common(20))

# 1) as latin1 text
print("\n== raw bytes as latin1 ==")
print(b.decode('latin1'))

# 2) check ascii printable runs (potential domains)
print("\n== printable runs len>=4 ==")
runs = re.findall(rb'[\x20-\x7e]{4,}', b)
for r in runs[:60]:
    print(repr(r.decode('latin1')))
