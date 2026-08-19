#!/usr/bin/env python3
"""Disassemble the config builder around 0x7976b4..0x797800 (secret_parse_api_url ref at 0x79773c)."""
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

# 0x7976b4 is the config-builder called from 0x796d3c; 0x79773c is inside it
# Disassemble from function start to well past the secret ref.
for start, size, label in [(0x7976b4, 0x180, "config-builder 0x7976b4"),
                           (0x797800, 0x160, "next fn 0x797800")]:
    code = read_va(start, size)
    print(f"\n########## {label} ##########")
    if code:
        for insn in md.disasm(code, start):
            mark = ""
            if insn.address in (0x79773c, 0x797740, 0x797688):
                mark = "   <<<< secret_parse_api_url ref"
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
