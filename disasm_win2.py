#!/usr/bin/env python3
"""Disassemble a full window; print function-relative info."""
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
va = int(sys.argv[1], 16)
back = int(sys.argv[2], 16) if len(sys.argv) > 2 else 0x80
fwd = int(sys.argv[3], 16) if len(sys.argv) > 3 else 0x180
start = max(va0, va - back)
end = min(va1, va + fwd)
print(f"=== 0x{start:x} .. 0x{end:x} ===")
roff = start - va0
for insn in md.disasm(code[roff:end - va0], start):
    mark = "   <<<<" if start + 0x10 <= insn.address <= start + fwd - 0x10 else ""
    print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
f.close()
