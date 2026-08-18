#!/usr/bin/env python3
"""Find references to pp+0x160d8 (the big hex blob) and disassemble context."""
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
md.skipdata = True
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

insns = []
addr = text[0]
while addr < text[1]:
    idx = addr - text[0]
    chunk = code[idx:]
    for insn in md.disasm(chunk, addr):
        insns.append(insn)
        addr = insn.address + insn.size
        break
    else:
        addr += 4
print(f"total insns: {len(insns)}")

TARGET = 0x160d8
hits = []
adds = []
for i, insn in enumerate(insns):
    if insn.mnemonic == "add" and "x27" in insn.op_str and "lsl #12" in insn.op_str:
        m = re.match(r'x(\d+),\s*x27,\s*#(0x[0-9a-fA-F]+),\s*lsl #12', insn.op_str)
        if m:
            adds.append((i, int(m.group(1)), int(m.group(2), 16) << 12))

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

# direct ldr
for insn in insns:
    if insn.mnemonic == "ldr":
        mm = re.match(r'x(\d+),\s*\[x27,\s*#(0x[0-9a-fA-F]+)\]', insn.op_str)
        if mm and int(mm.group(2), 16) == TARGET:
            hits.append(insn.address)

hits = sorted(set(hits))
print(f"\nrefs to pp+0x160d8: {len(hits)}")
for a in hits:
    i = next(k for k, insn in enumerate(insns) if insn.address == a)
    # find function start
    start = 0
    for k in range(i-1, max(0, i-200), -1):
        if insns[k].mnemonic == "ret":
            start = k+1
            break
    # print 40 insns around the reference
    print(f"\n=== ref@0x{a:x} func~0x{insns[start].address:x} ===")
    for k in range(max(0, start), min(len(insns), i+30)):
        print(f"  0x{insns[k].address:x}: {insns[k].mnemonic} {insns[k].op_str}")
f.close()
