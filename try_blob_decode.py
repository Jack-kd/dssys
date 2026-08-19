#!/usr/bin/env python3
"""Try multiple decodings of the huge hex blob at pp+0x160d8."""
import re, binascii, zlib

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

big = strings.get(0x160d8)
raw = binascii.unhexlify(big)
print("raw bytes:", len(raw))

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff

def dec_hex(h):
    rawb = binascii.unhexlify(h)
    seed=rawb[0]; key=rawb[1]; pad=seed&7; out=bytearray()
    for b in rawb[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

# 1) try custom dec_hex
try:
    d = dec_hex(big)
    print("\n[1] dec_hex: len", len(d))
    print("   head:", d[:100])
    print("   printable?", all(0x20<=c<0x7f or c in (10,13,9) for c in d[:200]))
except Exception as e:
    print("[1] dec_hex failed:", e)

# 2) zlib
for wbits in [15, -15, 31]:
    try:
        d = zlib.decompress(raw, wbits)
        print(f"\n[2] zlib wbits={wbits}: len {len(d)}")
        print("   head:", d[:120])
    except Exception as e:
        pass

# 3) the bytes might themselves be a sequence where each is printable after XOR with single byte
for k in range(256):
    d = bytes(b ^ k for b in raw)
    if all(0x20 <= c < 0x7f or c in (10,13,9,0) for c in d[:len(d)//2]):
        print(f"\n[3] XOR 0x{k:02x} first half printable:")
        print("   ", d[:200])

# 4) maybe it's hex of a big decimal number or repeated blocks - check for 16-byte patterns
#    test AES ECB with known keys
try:
    from Crypto.Cipher import AES
    keys = {
        '7f6702c324815d0e6749c73fda5335b2': 'k1',
        '6392886ae1105818e79155165835f2a2': 'k2',
    }
    for kh, name in keys.items():
        key = binascii.unhexlify(kh)
        for mode_name, cipher in [("ECB", AES.new(key, AES.MODE_ECB))]:
            try:
                d = cipher.decrypt(raw)
                if all(0x20<=c<0x7f or c in (10,13,9,0) for c in d[:len(d)//2]):
                    print(f"\n[4] AES-{mode_name} key {name}: printable!")
                    print("    head:", d[:200])
            except Exception as e:
                pass
except ImportError:
    print("\n[4] pycryptodome not available")

# 5) check uniqueness of 16-byte blocks (if ECB, repeated blocks would repeat)
blocks = [raw[i:i+16] for i in range(0, len(raw)-15, 16)]
print("\n[5] unique 16-byte blocks:", len(set(blocks)), "of", len(blocks))
# hex distribution - is this ASCII hex of something?
print("[6] first bytes as ints:", list(raw[:40]))
