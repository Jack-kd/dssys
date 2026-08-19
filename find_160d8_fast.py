#!/usr/bin/env python3
"""Fast raw-byte scan for references to pp+0x160d8.
add xN, x27, #0x160, lsl #12  (imm12=0x160, Rn=27) followed by ldr xN, [xN, #0xd8]
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
print(f".text: 0x{va0:x} size=0x{len(code):x}")

# add xN, x27, #0x160, lsl #12
adds = {}
for N in range(32):
    insn = 0x91458360 | N
    adds[N] = struct.pack("<I", insn)
# ldr xN, [xN, #0xd8]
ldrs = {}
for N in range(32):
    insn = 0xF9406C00 | (N << 5) | N
    ldrs[N] = struct.pack("<I", insn)

hits = []
i = 0
n = len(code)
while i < n - 4:
    w = code[i:i+4]
    for N, pat in adds.items():
        if w == pat:
            # look ahead up to 12 instructions (48 bytes) for matching ldr
            for j in range(i+4, min(i+4+12*4, n-4), 4):
                if code[j:j+4] == ldrs[N]:
                    hits.append((va0+i, N))
                    break
            break
    i += 4

print(f"hits: {len(hits)}")
for a, N in hits:
    print(f"  ref@0x{a:x} reg x{N}")
f.close()
