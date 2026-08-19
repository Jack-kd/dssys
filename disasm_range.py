#!/usr/bin/env python3
"""Disassemble a fixed VA range."""
import sys
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

text = None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
va0, va1 = text
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

start = int(sys.argv[1], 16)
end = int(sys.argv[2], 16)
roff = start - va0
for insn in md.disasm(code[roff:end - va0], start):
    print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}")
f.close()
