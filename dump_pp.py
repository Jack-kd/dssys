#!/usr/bin/env python3
"""Print decoded strings at given pp offsets (decode hex blob with seed/key/ror)."""
import re, binascii, sys

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

offs = [int(x,16) for x in sys.argv[1:]]
for off in offs:
    if off not in strings:
        print(f"pp+0x{off:x}: (no entry)")
        continue
    s = strings[off]
    if re.fullmatch(r'[0-9a-fA-F]+', s) and len(s) % 2 == 0 and len(s) >= 4:
        try:
            d = dec_hex(s)
            t = d.decode('utf-8', 'replace')
            if all(0x20 <= c < 0x7f or c in (10,13,9) for c in d):
                print(f"pp+0x{off:x} ({len(s)//2}B): {t!r}")
            else:
                print(f"pp+0x{off:x} ({len(s)//2}B): bytes={d.hex()}")
        except Exception as e:
            print(f"pp+0x{off:x}: raw={s[:40]!r} (dec fail {e})")
    else:
        print(f"pp+0x{off:x}: raw={s[:60]!r}")
