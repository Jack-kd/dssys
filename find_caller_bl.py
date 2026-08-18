#!/usr/bin/env python3
"""Find all callers (bl targets) of given functions in .text."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
import re, sys

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
targets = set(int(x, 16) for x in sys.argv[1:])
callers = {}
CHUNK = 0x20000
OVERLAP = 16
base = 0
while base < len(code):
    chunk = code[base:base + CHUNK + OVERLAP]
    insns = list(md.disasm(chunk, va0 + base))
    for i, insn in enumerate(insns):
        if insn.mnemonic == 'bl':
            m = re.match(r'^#0x([0-9a-f]+)$', insn.op_str.strip())
            if not m:
                continue
            tgt = int(m.group(1), 16)
            if tgt in targets:
                callers.setdefault(tgt, []).append(insn.address)
    base += CHUNK
f.close()

for t in sorted(callers):
    print(f"callers of 0x{t:x}: {len(callers[t])}")
    for c in sorted(callers[t]):
        print(f"   0x{c:x}")
