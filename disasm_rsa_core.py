#!/usr/bin/env python3
"""Disassemble RSA decrypt core (0x40465c) fully to understand the magic check & decrypted format."""
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
# 0x40465c .. 0x405100 should cover the whole decrypt function
code = read_va(0x40465c, 0xa00)
print(f"disasm 0x40465c + 0xa00 bytes")
for insn in md.disasm(code, 0x40465c):
    mark = ""
    if 0x404e94 <= insn.address <= 0x404f94:
        mark = "   <<<< error region"
    if insn.mnemonic in ("mov","add","ldr","cmp","sub","and","eor","lsr","asr","lsl"):
        pass
    print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
