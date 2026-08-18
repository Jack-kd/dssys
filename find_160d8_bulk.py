#!/usr/bin/env python3
"""Bulk-disassemble .text and find refs to pp+0x160d8."""
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
va0, va1 = text
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)
print(f".text: 0x{va0:x} size=0x{len(code):x}")

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True
md.skipdata_setup = ("db", None, None)
insns = list(md.disasm(code, va0))
print(f"insns: {len(insns)}")

TARGET = 0x160d8
# first pass: record add x27 lsl12 -> (insn_idx, regnum, base)
adds = []
for i, insn in enumerate(insns):
    if insn.mnemonic == "add" and "x27" in insn.op_str and "lsl #12" in insn.op_str:
        m = re.match(r'x(\d+),\s*x27,\s*#(0x[0-9a-fA-F]+),\s*lsl #12', insn.op_str)
        if m:
            adds.append((i, int(m.group(1)), int(m.group(2), 16) << 12))

hits = []
for i, regnum, base in adds:
    for j in range(i+1, min(i+40, len(insns))):
        nxt = insns[j]
        if nxt.mnemonic == "ldr":
            mm = re.match(r'x(\d+),\s*\[x(\d+),\s*#(0x[0-9a-fA-F]+)\]', nxt.op_str)
            if mm and int(mm.group(2)) == regnum:
                eff = base + int(mm.group(3), 16)
                if eff == TARGET:
                    hits.append(insns[i].address)
                break
        if nxt.mnemonic == "add" and "x27" in nxt.op_str and "lsl #12" in nxt.op_str:
            break

# also direct ldr xN, [x27, #imm] (imm up to 0xfff)
for insn in insns:
    if insn.mnemonic == "ldr":
        mm = re.match(r'x(\d+),\s*\[x27,\s*#(0x[0-9a-fA-F]+)\]', insn.op_str)
        if mm and int(mm.group(2), 16) == TARGET:
            hits.append(insn.address)

hits = sorted(set(hits))
print(f"\nrefs to pp+0x160d8: {len(hits)}")
for a in hits:
    i = next(k for k, insn in enumerate(insns) if insn.address == a)
    start = 0
    for k in range(i-1, max(0, i-200), -1):
        if insns[k].mnemonic == "ret":
            start = k+1
            break
    print(f"\n=== ref@0x{a:x} func~0x{insns[start].address:x} ===")
    for k in range(max(0, start), min(len(insns), i+30)):
        print(f"  0x{insns[k].address:x}: {insns[k].mnemonic} {insns[k].op_str}")
f.close()
