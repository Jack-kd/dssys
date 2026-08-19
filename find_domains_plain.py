#!/usr/bin/env python3
"""Print all pp.txt String entries that look like domains/URLs/ips (plain or decoded)."""
import re, binascii

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

hostre = re.compile(r'^(https?://)?[a-z0-9-]+(\.[a-z0-9-]+)+(\.[a-z]{2,})([:/][^\s]*)?$')
print("=== plain String entries that are hostnames/urls ===")
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if not m:
            continue
        off = int(m.group(1),16); s = m.group(2)
        if re.fullmatch(r'[0-9a-fA-F]+', s) and len(s) >= 6 and len(s) % 2 == 0:
            continue
        if hostre.match(s):
            print(f"pp+0x{off:x}: {s!r}")
