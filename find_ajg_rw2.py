#!/usr/bin/env python3
"""Find two-instruction accesses to static field slot 0x1258/0x125c/0x1260 using
the pattern: add xN, x26, #hi, lsl #12 ; ldr/str xM, [xN, #lo]   (N may differ).
Report readers vs writers."""
import re
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)
for sec in elf.iter_sections():
    if sec.name == ".text":
        t0 = sec["sh_addr"]; f.seek(sec["sh_offset"]); code = f.read(sec["sh_size"]); break

CHUNK = 1 << 20
OVERLAP = 48
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
targets = {0x1258: "_Ajg", 0x125c: "dXd", 0x1260: "Bjg"}
res = {t: {"ldr": [], "str": []} for t in targets}
addre = re.compile(r'^x(\d+), x26, #(0x[0-9a-fA-F]+), lsl #12$')
memre = re.compile(r'^x(\d+), \[x(\d+), #(0x[0-9a-fA-F]+)\]$')

base = 0
while base < len(code):
    chunk = code[base:base + CHUNK + OVERLAP]
    insns = list(md.disasm(chunk, t0 + base))
    for i in range(len(insns) - 1):
        a = insns[i]; b = insns[i+1]
        m = addre.match(a.op_str.strip())
        if not m:
            continue
        rd = int(m.group(1)); hi = int(m.group(2), 16)
        m2 = memre.match(b.op_str.strip())
        if not m2:
            continue
        lo = int(m2.group(3), 16)
        base_reg = int(m2.group(2))
        off = (hi << 12) | lo
        if off in targets and b.mnemonic in ("ldr", "str"):
            # optionally the address could be via a different reg; accept if base_reg == rd
            if base_reg != rd:
                continue
            res[off][b.mnemonic].append((a.address, b.mnemonic, b.op_str))
    base += CHUNK

for t, name in targets.items():
    for kind in ("ldr", "str"):
        lst = sorted(set(res[t][kind]))
        print(f"0x{t:x} {name} {kind}s ({len(lst)}): {[hex(x) for x in lst[:25]]}")
