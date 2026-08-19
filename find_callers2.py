#!/usr/bin/env python3
"""Find direct bl callers of a set of target functions."""
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
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True
insns = list(md.disasm(code, va0))

targets = [int(x, 16) for x in sys.argv[1:]]
tmap = {}
for t in targets:
    tmap[t] = []
for i, insn in enumerate(insns):
    if insn.mnemonic == "bl":
        try:
            dst = int(insn.op_str.replace("#", ""), 16)
        except Exception:
            continue
        if dst in tmap:
            tmap[dst].append(i)

for t in targets:
    print(f"\n###### callers of 0x{t:x}: {len(tmap[t])}")
    for i in tmap[t][:12]:
        a = insns[i].address
        start = 0
        for k in range(i-1, max(0, i-400), -1):
            if insns[k].mnemonic == "ret":
                start = k+1
                break
        print(f"\n=== bl 0x{t:x} @0x{a:x} (func~0x{insns[start].address:x}) ===")
        for k in range(max(0, start), min(len(insns), i+30)):
            print(f"  0x{insns[k].address:x}: {insns[k].mnemonic} {insns[k].op_str}")
