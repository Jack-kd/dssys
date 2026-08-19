#!/usr/bin/env python3
"""Decode the pp entries around 0x13d70-0x13f00 (MinghuaQu) with the known
seed/key/ror algorithm, and print the full _Ajg payload as text."""
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

# 1) decode the MinghuaQu-adjacent entries
for off in [0x13d70,0x13d78,0x13db8,0x13dc0,0x13e30,0x13e38,0x13e70,0x13e78,
            0x13ec0,0x13f00]:
    s = strings.get(off)
    if not s:
        print(f"pp+0x{off:x}: (missing)"); continue
    try:
        d = dec_hex(s)
        try: t = d.decode('utf-8')
        except Exception: t = repr(d)
        print(f"pp+0x{off:x} ({len(s)//2}B): {t!r}")
    except Exception as e:
        print(f"pp+0x{off:x}: NOT hex ({e}) -> {s!r}")

# 2) full _Ajg payload as printable text with grouping
s = strings.get(0x160d8)
raw = binascii.unhexlify(s)
seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
for b in raw[2:]:
    key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
payload = bytes(out)
print("\n=== _Ajg payload (%d bytes) ===" % len(payload))
for i in range(0, len(payload), 96):
    seg = payload[i:i+96]
    txt = ''.join(chr(c) if 32 <= c < 127 else '.' for c in seg)
    print(f"{i:4d}: {txt}")
