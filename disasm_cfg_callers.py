#!/usr/bin/env python3
"""Disassemble around the 3 callers of config-builder 0x796c34."""
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
# prologue 0xfd79bfa9 (stp x29,x30,[x15,#-0x10]!) -> find function start
import struct
text=None; text_va=None
for sec in elf.iter_sections():
    if sec.name==".text":
        text=sec.data(); text_va=sec["sh_addr"]; break
def find_func_start(va):
    # walk back up to 0x600 bytes looking for a valid stp prologue followed by mov x29,x15
    for delta in range(0, 0x600, 4):
        a = va - delta
        off = v2o(a)
        if off is None: continue
        b = read_va(a, 8)
        if not b: continue
        w0 = int.from_bytes(b[0:4],'little'); w1=int.from_bytes(b[4:8],'little')
        # stp x29,x30,[x15,#-0x10]! = 0xA9BF7BFD ; mov x29,x15 = 0xAA0F03FD
        if w0==0xA9BF7BFD and w1==0xAA0F03FD:
            return a
    return None

for ref, label in [(0x7956dc,"caller A"),(0x79cfa4,"caller B"),(0x79f648,"caller C")]:
    start = find_func_start(ref)
    print(f"\n########## {label} ref@0x{ref:x} fn_start=0x{(start or 0):x} ##########")
    if start is None:
        start = ref - 0x60
    code = read_va(start, 0x280)
    if code:
        for i in md.disasm(code, start):
            mark = "   <== REF" if i.address==ref else ""
            print(f"0x{i.address:x}: {i.mnemonic}\t{i.op_str}{mark}")
