#!/usr/bin/env python3
"""Try to decode the huge blob at pp+0x160d8 (hex string) with the dec_hex algorithm."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

big = strings.get(0x160d8)
print("huge blob pp+0x160d8 hex-string len =", len(big))
try:
    raw = binascii.unhexlify(big)
    print("decoded raw bytes len =", len(raw))
    print("first 32 bytes:", raw[:32].hex())
except Exception as e:
    print("unhexlify failed:", e)
    raw = None

if raw:
    # try dec_hex on it
    try:
        d = dec_hex(big)
        print("\n== dec_hex result (first 256 bytes) ==")
        print(d[:256].decode('latin1'))
        print("\nprintable? ", all(0x20 <= c < 0x7f or c in (10,13,9) for c in d))
        # show printable runs
        runs = re.findall(rb'[ -~]{6,}', d)
        print("printable runs:", [r.decode('latin1') for r in runs[:30]])
    except Exception as e:
        print("dec_hex failed:", e)
    # try simple hex decode of whole
    try:
        t = bytes.fromhex(big)
        print("\nbytes.fromhex first 64:", t[:64])
    except Exception as e:
        print("fromhex failed:", e)
