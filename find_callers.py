#!/usr/bin/env python3
"""Find all `bl #target` call sites in .text for given target VAs."""
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
md.detail = True
targets = set(int(x, 16) for x in sys.argv[1:])
calls = {t: [] for t in targets}
CHUNK = 0x40000
base = 0
while base < len(code):
    chunk = code[base:base + CHUNK]
    for insn in md.disasm(chunk, va0 + base):
        if insn.mnemonic == "bl":
            try:
                tgt = int(insn.op_str.strip().lstrip('#'), 16)
            except ValueError:
                continue
            if tgt in calls:
                calls[tgt].append(insn.address)
    base += CHUNK
f.close()

for t in sorted(targets):
    print(f"callers of 0x{t:x}: {len(calls[t])}")
    for c in calls[t]:
        print(f"  0x{c:x}")
