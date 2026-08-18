#!/usr/bin/env python3
"""Scan .text for references to PP/object-store strings:
   add xN, x27, #imm12, lsl #12  (imm12 = (off>>12)&0xfff)
   ldr  xN, [xN, #off&0xfff]
   We scan for any ldr with x27-relative addressing through a prior add x27.
   Simpler: search for `add xN, x27, #K, lsl#12` followed by `ldr xN, [xN, #L]`
   where K<<12|L == target offset.
"""
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
va0, va1 = text
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)

def find_refs(target_off, label):
    """add xN, x27, #(off>>12), lsl#12 ; ldr xN, [xN, #(off&0xfff)]"""
    hi = (target_off >> 12) & 0xfff
    lo = target_off & 0xfff
    hits = []
    # add xN, x27, #hi, lsl#12 : encoding 0x91400000 | N<<5 | hi<<10 | 27(Rn) ; bit22=1 lsl12
    adds = {N: struct.pack("<I", 0x914003B0 | (N << 5) | (hi << 10)) for N in range(32)}
    ldrs = {N: struct.pack("<I", 0xF9400000 | (N << 5) | ((lo >> 3) << 10)) for N in range(32)}
    i = 0
    n = len(code)
    while i < n - 8:
        for N, pat in adds.items():
            if code[i:i+4] == pat and code[i+4:i+8] == ldrs[N]:
                hits.append(va0 + i)
                break
        i += 4
    print(f"{label} (off=0x{target_off:x}): {len(hits)} refs")
    for a in hits:
        print(f"  0x{a:08x}")
    return hits

targets = [
    (0x17d80, "'https://xdd'"),
    (0x17d78, "'https://xdd/video?id='"),
    (0x14e88, "'/ndsx.php/v7'"),
    (0x17d10, "'https://'"),
    (0x17d08, "'http://'"),
    (0x20ed0, "'http://127.0.0.1/error.mp4'"),
]
for off, label in targets:
    find_refs(off, label)
f.close()
