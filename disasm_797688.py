#!/usr/bin/env python3
"""Disassemble 0x797688 (config load) and 0x7976b4 caller region + check for default config URL."""
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

def read_va(va, size):
    off = va_to_off(va)
    if off is None:
        return None
    f.seek(off)
    return f.read(size)

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

for start, size, label in [(0x797688, 0x2c, "0x797688 (config load)"),
                           (0x48e650, 0x18, "0x48e650 (calls 0x797688)")]:
    code = read_va(start, size)
    print(f"\n########## {label} ##########")
    if code:
        for insn in md.disasm(code, start):
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}")
f.close()
