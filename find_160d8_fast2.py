#!/usr/bin/env python3
"""Scan for refs to pp+0x160d8: add xN, x27, #0x16 lsl#12 ; ldr xN,[xN,#0xd8]"""
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

# add xN, x27, #0x16, lsl #12   (Rd=N)  -- bit22 set = lsl#12
adds = {N: struct.pack("<I", 0x91405B60 | N) for N in range(32)}
# ldr xN, [xN, #0xd8]
ldrs = {N: struct.pack("<I", 0xF9406C00 | (N << 5) | N) for N in range(32)}

hits = []
i = 0
n = len(code)
while i < n - 8:
    # check for add at i, ldr at i+4
    for N, pat in adds.items():
        if code[i:i+4] == pat:
            if code[i+4:i+8] == ldrs[N]:
                hits.append((va0+i, N))
            break
    i += 4

print(f"hits: {len(hits)}")
for a, N in hits:
    print(f"  ref@0x{a:x} reg x{N}")
f.close()
