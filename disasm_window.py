#!/usr/bin/env python3
"""Disassemble a bounded window around target VAs (for functions that span huge
ranges or when find_func_end mis-scans). Usage: disasm_window.py VA [VA ...] [--pre N] [--post N]"""
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

pre = post = 0x80
args = [a for a in sys.argv[1:]]
if "--pre" in args:
    pre = int(args[args.index("--pre")+1], 16)
    args = args[:args.index("--pre")]
if "--post" in args:
    post = int(args[args.index("--post")+1], 16)
    args = args[:args.index("--post")]

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.detail = True

for t in [int(a, 16) for a in args]:
    print(f"=== window 0x{t-pre:x} .. 0x{t+post:x} ===")
    start = max(va0, t - pre)
    end = min(va1, t + post)
    for insn in md.disasm(code[start-va0:end-va0], start):
        mark = "  <<<<" if insn.address == t else ""
        print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
    print()
