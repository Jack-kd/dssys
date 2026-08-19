#!/usr/bin/env python3
"""Disassemble around 0x307284 to see how _Ajg static field is used."""
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

target = 0x307000
off = va_to_off(target)
f.seek(off)
code = f.read(0x700)
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
for insn in md.disasm(code, target):
    mark = "  <<<<" if 0x307270 <= insn.address <= 0x3072a0 else ""
    print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
f.close()
