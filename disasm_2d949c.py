#!/usr/bin/env python3
"""Disassemble 0x2d949c."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

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

va0 = 0x2d9400
va1 = 0x2d9a00
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True
for insn in md.disasm(code, va0):
    print(f"  0x{insn.address:x}: {insn.mnemonic} {insn.op_str}")
f.close()
