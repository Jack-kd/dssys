#!/usr/bin/env python3
"""Deep-dive: what does the _Ajg blob (pp+0x160d8) contain? 
Try second-stage XOR/ror with key*0x83+seed, print readable substrings."""
import re, binascii

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

h = strings[0x160d8]
print("raw string len:", len(h))
print("first 120 chars:", h[:120])
raw = binascii.unhexlify(h)
print("unhex len:", len(raw), "first bytes:", raw[:16].hex())

# stage1: hex -> comma separated numbers -> byte array
d = binascii.unhexlify(h)
# d may be the raw text 'xxx,yyy,...'? Let's check.
try:
    text = d.decode('ascii')
    nums = [int(x) for x in text.split(',') if x.strip()]
    b = bytes(nums)
    print("\nstage1 -> byte len:", len(b))
    print("first 40 bytes:", b[:40].hex())
except Exception as e:
    print("stage1 ascii parse failed:", e)
    b = raw
    print("using raw")

# search for readable substrings in b
def printable_runs(data, minlen=6):
    runs = []
    cur = bytearray()
    for i, c in enumerate(data):
        if 32 <= c < 127:
            cur.append(c)
        else:
            if len(cur) >= minlen:
                runs.append((i-len(cur), bytes(cur)))
            cur = bytearray()
    if len(cur) >= minlen:
        runs.append((len(data)-len(cur), bytes(cur)))
    return runs

print("\n=== printable runs in stage1 blob ===")
for off, run in printable_runs(b, 6):
    print(f"  +0x{off:04x}: {run!r}")

# Now stage2: try XOR with key*0x83+seed - but what seed/key? Try all
print("\n=== stage2: try seed/key from blob header (2 bytes prefix) ===")
for sk in range(0, 65536):
    seed = sk & 0xff
    key = (sk >> 8) & 0xff
    # only test combos where seed==key? no - iterate all, but limit output
    # Actually brute is expensive (65536 * 915). Do a smarter scan: compute dec for seed/key, score printable
    if sk % 256 < 64:
        continue
    pad = seed & 7
    out = bytearray()
    k = key
    for byte in b:
        k = (k*0x83 + seed) & 0xff
        x = byte ^ k
        out.append((ror8(x, pad) - seed) & 0xff)
    printable = sum(1 for c in out if 32 <= c < 127)
    score = printable / len(out)
    if score > 0.97:
        runs = printable_runs(out, 8)
        joined = b'|'.join(r for _, r in runs)
        if b'http' in joined.lower() or b'/' in joined:
            print(f"  seed=0x{seed:02x} key=0x{key:02x} pad={pad} score={score:.3f}")
            for off, run in runs[:10]:
                print(f"     {run!r}")
