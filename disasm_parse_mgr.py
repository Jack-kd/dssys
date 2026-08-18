#!/usr/bin/env python3
"""Disassemble parse manager region (parse_secret/parse_api)."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

path = "/workspace/extract/libapp.so"
f = open(path, "rb"); elf = ELFFile(f)
segs = [(s["p_vaddr"], s["p_vaddr"]+s["p_filesz"], s["p_offset"]) for s in elf.iter_segments() if s["p_type"]=="PT_LOAD"]
def v2o(va):
    for v0,v1,o0 in segs:
        if v0<=va<v1: return o0+(va-v0)
    return None
def read_va(va,size):
    off=v2o(va)
    if off is None: return None
    f.seek(off); return f.read(size)
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

for start, size, label in [(0x504b00, 0x500, "parse manager (parse_secret/api 0x504b60)")]:
    code = read_va(start, size)
    print(f"\n########## {label} ##########")
    for i in md.disasm(code, start):
        print(f"0x{i.address:x}: {i.mnemonic}\t{i.op_str}")
