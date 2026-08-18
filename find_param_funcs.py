#!/usr/bin/env python3
"""Find functions that reference multiple core request-param PP offsets."""
import struct
from elftools.elf.elffile import ELFFile

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)
segs = []
for seg in elf.iter_segments():
    if seg["p_type"] == "PT_LOAD":
        segs.append((seg["p_vaddr"], seg["p_vaddr"]+seg["p_filesz"], seg["p_offset"]))

def va_to_off(va):
    for v0, v1, o0 in segs:
        if v0 <= va < v1:
            return o0 + (va - v0)
    return None

text = None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

params = {
    0x16138: "appKey", 0x16140: "channel", 0x118a0: "version",
    0x24a88: "deviceId", 0x118e8: "csrf", 0x2e450: "token",
    0x123d0: "last_login_token", 0x1e608: "sign_md5",
    0x16fe8: "getSign", 0x16fd8: "flutter_android_sign",
    0x14e88: "/ndsx.php/v7", 0x14e80: "/logs",
}
tset = set(params)

# map: each ref addr -> list of pp offsets loaded nearby (within 0x40)
refs = {t: [] for t in tset}
for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    # direct ldr xN, [x27, #imm] for small offsets
    if (w & 0xFFC003E0) == 0xF9400360:
        imm12 = (w >> 10) & 0xFFF
        eff = imm12 * 8
        if eff in tset:
            refs[eff].append(text[0] + i)
    # add xRd, x27, #page lsl12 + ldr
    if (w & 0xFFC003E0) == 0x91400360:
        rd = w & 0x1F
        page = ((w >> 10) & 0xFFF) << 12
        for j in range(i+4, min(i+4*24, size-4), 4):
            w2 = struct.unpack_from("<I", code, j)[0]
            if (w2 & 0xFFC003E0) == (0xF9400000 | (rd << 5)):
                imm12 = (w2 >> 10) & 0xFFF
                eff = page + imm12 * 8
                if eff in tset:
                    refs[eff].append(text[0] + j)
                break
            if (w2 & 0xFFC003E0) in (0x91400360, 0x91000360):
                break

# group refs by function window (0x300)
import collections
buckets = collections.defaultdict(set)  # rounded addr -> set of pp labels
for t, addrs in refs.items():
    for a in addrs:
        buckets[a // 0x300].add((t, a))

print("=== refs per param ===")
for t in sorted(tset):
    print(f"  pp+0x{t:x} {params[t]:<22} refs: {len(refs[t])}")

print("\n=== function windows with >=3 distinct core params ===")
for bucket, items in sorted(buckets.items()):
    if len(items) >= 3:
        base = bucket * 0x300
        labels = sorted((t, a) for t, a in items)
        print(f"  window 0x{base:x}: {len(labels)} refs -> {[params[t] for t, _ in labels]}")
