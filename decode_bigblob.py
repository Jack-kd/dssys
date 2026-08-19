#!/usr/bin/env python3
"""Decode the huge comma-separated byte blob (pp+0x160d8) and other unknown strings."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

# pull String entries from pp.txt
strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

# decode the huge blob: comma-separated decimals -> bytes
big = strings.get(0x160d8)
if big:
    print(f"huge blob pp+0x160d8 (len={len(big)})")
    nums = [int(x) for x in big.split(",") if x.strip()]
    raw = bytes(nums)
    print("  as bytes (first 64):", raw[:64].hex())
    # try ascii interpretation
    print("  as latin1 (first 96):", repr(raw[:96].decode("latin1")))
    # try XOR with single byte
    for k in range(256):
        d = bytes(b ^ k for b in raw)
        try:
            t = d.decode("utf-8")
            if all(0x20 <= c < 0x7f or c in (10,13,9) for c in d) and len(t) > 20:
                print(f"  XOR 0x{k:02x}: {t[:120]!r}")
        except Exception:
            pass
    # try it as hex-deobfuscation input (maybe values are hex chars)
    # try interpretation as a shifted byte array (x - const)
    for sh in range(1, 16):
        d = bytes((x - sh) & 0xff for x in raw)
        if all(0x20 <= c < 0x7f or c in (10,13,9) for c in d):
            print(f"  -{sh}: {d.decode('latin1')[:120]!r}")
            break

# decode other unknowns
for off in [0x16fd0, 0x16fc0, 0x16fb0, 0x16fb8, 0x14e70, 0x167f8, 0x172e8, 0x172f0, 0x16110, 0x16120, 0x16150, 0x16160, 0x16168]:
    v = strings.get(off)
    if v is None:
        print(f"pp+0x{off:x}: (not a hex String entry)")
        continue
    if v.replace(",", "").isdigit() and "," in v:
        nums = [int(x) for x in v.split(",") if x.strip()]
        raw = bytes(nums)
        print(f"pp+0x{off:x}: byte-list -> {raw!r}")
    else:
        try:
            print(f"pp+0x{off:x}: {dec_hex(v)!r}")
        except Exception as e:
            print(f"pp+0x{off:x}: {v[:60]!r} (unparseable: {e})")
