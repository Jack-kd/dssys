#!/usr/bin/env python3
"""Diagnose PP reference scanning: count add x27 lsl#12 patterns and find target offsets."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
import re

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
print(f".text: 0x{text[0]:x} - 0x{text[1]:x}  size=0x{text[1]-text[0]:x}")

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

insns = list(md.disasm(code, text[0]))
print(f"total insns: {len(insns)}")

# count add xN, x27, #imm, lsl #12
add27 = []
for insn in insns:
    if insn.mnemonic == "add" and "x27" in insn.op_str and "lsl #12" in insn.op_str:
        m = re.match(r'x(\d+),\s*x27,\s*#(0x[0-9a-fA-F]+),\s*lsl #12', insn.op_str)
        if m:
            add27.append((insn.address, int(m.group(1)), int(m.group(2),16)<<12, insn.op_str))
print(f"add xN, x27, #imm lsl#12 count: {len(add27)}")
for a, reg, base, op in add27[:20]:
    print(f"  0x{a:x}: {op}  base=0x{base:x}")

# Also count direct ldr xN, [x27, #imm]
ldr27 = []
for insn in insns:
    if insn.mnemonic == "ldr":
        m = re.match(r'x\d+,\s*\[x27,\s*#(0x[0-9a-fA-F]+)\]', insn.op_str)
        if m:
            ldr27.append((insn.address, int(m.group(1),16), insn.op_str))
print(f"direct ldr xN,[x27,#imm] count: {len(ldr27)}")
for a, imm, op in ldr27[:20]:
    print(f"  0x{a:x}: {op}  off=0x{imm:x}")
f.close()
