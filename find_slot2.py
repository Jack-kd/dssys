#!/usr/bin/env python3
"""Find add xN, x26, #hi, lsl#12 ; ldr/str xN, [xN, #lo] patterns where slot==hi<<12|lo.
   Scan for the _Ajg slot (0x1258) and report surrounding functions."""
import sys
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

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
addre = re.compile(r'^x(\d+), x26, #(0x[0-9a-fA-F]+), lsl #12$')
memre = re.compile(r'^x(\d+), \[x(\d+), #(0x[0-9a-fA-F]+)\]$')
target_slot = 0x1258
hits = []
CHUNK = 0x40000
OVERLAP = 8
base = 0
while base < len(code):
    insns = list(md.disasm(code[base:base + CHUNK + OVERLAP], va0 + base))
    for i in range(len(insns) - 1):
        a = insns[i]
        b = insns[i+1]
        m = addre.match(a.op_str.strip())
        if not m:
            continue
        hi = int(m.group(2), 16)
        n = int(m.group(1))
        m2 = memre.match(b.op_str.strip())
        if not m2 or m2.group(2) != n:
            continue
        lo = int(m2.group(3), 16)
        slot = (hi << 12) | lo
        if slot == target_slot:
            hits.append((a.address, b.mnemonic))
    base += CHUNK
f.close()
print(f"references to object-store slot 0x{target_slot:x}: {len(hits)}")
for addr, mn in hits:
    print(f"  0x{addr:x}: {mn}")
