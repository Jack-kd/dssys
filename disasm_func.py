#!/usr/bin/env python3
"""Disassemble function containing a given VA, printing full function."""
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
PROLOGUE = b"\xfd\xbf\xa9"  # stp x29, x30, [x15, #-0x10]!

def find_func_start(va, max_back=0x2000):
    off = va - va0
    start = max(0, off - max_back)
    best = None
    pos = start
    while pos <= off:
        idx = code.find(PROLOGUE, pos, off + 4)
        if idx == -1:
            break
        best = va0 + idx
        pos = idx + 1
    return best

def find_func_end(va):
    """next prologue after va (naive)"""
    off = va - va0
    idx = code.find(PROLOGUE, off + 4, off + 0x2000)
    if idx == -1:
        return off + 0x2000
    return va0 + idx

for tgt in [int(x, 16) for x in sys.argv[1:]]:
    fs = find_func_start(tgt) or (tgt - 0x100)
    fe = find_func_end(fs)
    print(f"=== function containing 0x{tgt:x}: 0x{fs:x} .. 0x{fe:x} ===")
    roff = fs - va0
    for insn in md.disasm(code[roff:fe - va0], fs):
        mark = "  <<<<" if fs - 0x100 <= insn.address <= fe + 0x100 and abs(insn.address - tgt) < 0x200 else ""
        print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
    print()
f.close()
