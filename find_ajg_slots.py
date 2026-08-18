#!/usr/bin/env python3
"""Scan for reads/writes to object-store static field slots: [x26, #0x1258] (_Ajg),
#0x125c (dXd), #0x1260 (Bjg)."""
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

for slot, name in ((0x1258, "_Ajg"), (0x125c, "dXd"), (0x1260, "Bjg")):
    imm = slot >> 3
    print(f"=== slot 0x{slot:x} ({name}) ===")
    # ldr xN, [x26, #slot]  = 0xF9400000 | N<<5 | imm<<10
    for N in range(32):
        insn = struct.pack("<I", 0xF9400000 | (N << 5) | (imm << 10))
        pos = 0
        while True:
            idx = code.find(insn, pos)
            if idx == -1:
                break
            print(f"  read 0x{va0+idx:x}: ldr x{N}, [x26, #0x{slot:x}]")
            pos = idx + 1
    # str xN, [x26, #slot]
    for N in range(32):
        insn = struct.pack("<I", 0xF9000000 | (N << 5) | (imm << 10))
        pos = 0
        while True:
            idx = code.find(insn, pos)
            if idx == -1:
                break
            print(f"  write 0x{va0+idx:x}: str x{N}, [x26, #0x{slot:x}]")
            pos = idx + 1
f.close()
