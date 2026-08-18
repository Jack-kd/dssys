#!/usr/bin/env python3
"""Disassemble function at 0x4ae480 and nearby callers in libapp.so"""
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

target = 0x4ae480
code = read_va(target, 512)
if code:
    print(f"=== 0x{target:x} (first 512 bytes) ===")
    for insn in md.disasm(code, target):
        print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}")
else:
    print("cannot map target VA")
f.close()
