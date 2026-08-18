#!/usr/bin/env python3
"""Tolerant disassembler: step byte-by-byte, print .byte on invalid/stop."""
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
f.close()
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

start = int(sys.argv[1], 16)
end = int(sys.argv[2], 16)
pos = start
while pos < end:
    insns = list(md.disasm(code[pos-va0:pos-va0+16], pos, count=1))
    if not insns:
        print(f"  0x{pos:08x}: .byte 0x{code[pos-va0]:02x}   <-- invalid")
        pos += 1
        continue
    insn = insns[0]
    print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}")
    pos += insn.size
