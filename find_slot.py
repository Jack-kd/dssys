#!/usr/bin/env python3
"""Find code references to object-store slot 0x1258 (zXa._Ajg) and related."""
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
target = 0x1258
hits = []
CHUNK = 0x40000
base = 0
while base < len(code):
    for insn in md.disasm(code[base:base + CHUNK], va0 + base):
        if "[x26, #0x%x]" % target in insn.op_str or "#0x%x]" % target in insn.op_str:
            if "x26" in insn.op_str:
                hits.append((insn.address, insn.mnemonic, insn.op_str))
    base += CHUNK
f.close()
print(f"references to [x26, #0x{target:x}]: {len(hits)}")
for a, m, o in hits:
    print(f"  0x{a:x}: {m} {o}")
