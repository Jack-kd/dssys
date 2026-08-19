#!/usr/bin/env python3
"""Deep disassembly of getSign callees for signature algorithm reconstruction."""
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

# Key functions called by getSign (0x7c7d40-0x7c7d84):
#   0x7c7d48: bl #0x669408   - string operation (maybe string concat or lookup)
#   0x7c7d60: bl #0x6a5e04   - another string op
#   0x7c7d6c: bl #0x74ab64   - compare/map lookup
#   0x7c7d7c: b  #0x74ce60   - result return
#
# From the larger function (0x7c7d88+):
#   0x7c7e20: bl #0x746514   - some operation
#   0x7c7e28: bl #0x4684f4   - ???
#   0x7c7e44: mov x17, #0x245b - vtable dispatch
#
# Also check sign_md5 config region at 0x789558

targets = [
    (0x669408, 0x400, "getSign callee 0x669408 (string concat?)"),
    (0x6a5e04, 0x400, "getSign callee 0x6a5e04 (string op2?)"),
    (0x74ab64, 0x300, "getSign callee 0x74ab64 (compare?)"),
    (0x74ce60, 0x200, "getSign tail 0x74ce60 (return)"),
    (0x746514, 0x200, "callee 0x746514"),
    (0x4684f4, 0x400, "callee 0x4684f4 (MD5 core?)"),
    (0x789558, 0x300, "sign_md5 config region"),
    (0x254ec8, 0x200, "getSign -> 0x669408 -> 0x254ec8"),
]

for start, size, label in targets:
    code = read_va(start, size)
    print(f"\n{'='*60}")
    print(f"=== {label}  (0x{start:x}) ===")
    print(f"{'='*60}")
    if code:
        for insn in md.disasm(code, start):
            print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}")
    else:
        print("  [NO CODE]")

f.close()