#!/usr/bin/env python3
"""Disassemble the getSign / flutter_android_sign implementations."""
import struct
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
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
PROLOGUE = b"\xfd\xbf\xa9"

def find_func_start(va, max_back=0x2000):
    off = va - text[0]
    start = max(0, off - max_back)
    best = None
    pos = start
    while pos <= off:
        idx = code.find(PROLOGUE, pos, off + 4)
        if idx == -1:
            break
        best = text[0] + idx
        pos = idx + 1
    return best

# 0x669408 is the bl target from getSign logic; 0x669858 = flutter_android_sign ref
for base in [0x669408, 0x669858]:
    func = find_func_start(base) or (base - 0x20)
    print(f"\n===== target @{base:#x}  func_start={func:#x} =====")
    start = func or (base - 0x20)
    roff = start - text[0]
    end = min(roff + 0x300, size)
    for insn in md.disasm(code[roff:end], start):
        print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}")
