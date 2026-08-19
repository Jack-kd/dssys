#!/usr/bin/env python3
"""Disassemble config-builder + parse-manager + sign regions."""
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
md.detail = False

targets = [
    (0x7a35dc, 0x700, "config-app_config region (0x7a3860)"),
    (0x504b00, 0x500, "parse manager (parse_secret/api 0x504b60)"),
    (0x789520, 0x300, "sign_md5 (0x789558)"),
]

for start, size, label in targets:
    code = read_va(start, size)
    print(f"\n########## {label}  (0x{start:x}) ##########")
    if code:
        for insn in md.disasm(code, start):
            mark = ""
            if insn.address in (0x7a3860, 0x7a3864, 0x504b60, 0x504bd8, 0x504c54, 0x789558):
                mark = "   <== KEY STRING REF"
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
