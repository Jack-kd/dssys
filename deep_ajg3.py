#!/usr/bin/env python3
"""Correct 2-stage decode of _Ajg (pp+0x160d8):
stage1: seed/key/ror deobfuscation of the hex string -> comma-separated numbers -> 915-byte array
stage2: decrypt with key stream key*0x83+seed (brute seed/key) -> look for URL
"""
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

h = strings[0x160d8]
d = dec_hex(h)
print("stage1 text len:", len(d))
try:
    text = d.decode('ascii')
except Exception as e:
    print("not ascii:", e)
    print(repr(d[:200]))
    text = None
if text is not None:
    nums = [int(x) for x in text.split(',') if x.strip()]
    b = bytes(nums)
    print("stage1 -> byte array len:", len(b))
    print("first 60 bytes:", b[:60].hex())
    print("raw repr first 200:", repr(b[:200]))

    # printable runs
    def printable_runs(data, minlen=5):
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
    print("\n=== printable runs (raw 915B) ===")
    for off, run in printable_runs(b, 6):
        print(f"  +0x{off:04x}: {run!r}")

    # stage2: brute key stream seed/key
    print("\n=== stage2 brute (seed,key) decrypt -> printable score ===")
    results = []
    for seed in range(256):
        pad = seed & 7
        for key in range(256):
            out = bytearray()
            k = key
            for byte in b:
                k = (k*0x83 + seed) & 0xff
                x = byte ^ k
                out.append((ror8(x, pad) - seed) & 0xff)
            printable = sum(1 for c in out if 32 <= c < 127)
            score = printable / len(out)
            runs = printable_runs(out, 10)
            joined = b'|'.join(r for _, r in runs)
            if score > 0.995 and (b'http' in joined.lower() or b'/' in joined):
                results.append((score, seed, key, out))
    results.sort(key=lambda r: -r[0])
    for score, seed, key, out in results[:10]:
        print(f"\n  seed=0x{seed:02x} key=0x{key:02x} score={score:.4f}")
        for off, run in printable_runs(out, 12)[:15]:
            print(f"     {run!r}")
