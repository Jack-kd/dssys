#!/usr/bin/env python3
"""Find every access to static slot 0x1258 (_Ajg) and 0x125c/0x1260 (Bjg/dXd):
readers (ldr xN,[x26,#...]) and writers (str xN,[x26,#...])."""
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
OVERLAP = 32
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
slots = {0x1258: "_Ajg", 0x125c: "dXd", 0x1260: "Bjg"}
reads = {s: [] for s in slots}
writes = {s: [] for s in slots}
ldrre = re.compile(r'^x\d+, \[x26, #(0x[0-9a-fA-F]+)\]$')
strre = re.compile(r'^x\d+, \[x26, #(0x[0-9a-fA-F]+)\]$')

base = 0
while base < len(code):
    chunk = code[base:base + CHUNK + OVERLAP]
    insns = list(md.disasm(chunk, t0 + base))
    for insn in insns:
        if insn.mnemonic == "ldr":
            m = ldrre.match(insn.op_str)
            if m and int(m.group(1), 16) in slots:
                reads[int(m.group(1), 16)].append(insn.address)
        elif insn.mnemonic == "str":
            m = strre.match(insn.op_str)
            if m and int(m.group(1), 16) in slots:
                writes[int(m.group(1), 16)].append(insn.address)
    base += CHUNK

for s, name in slots.items():
    print(f"[x26,#0x{s:x}] {name}:")
    print(f"   reads ({len(reads[s])}): {[hex(x) for x in reads[s]]}")
    print(f"   writes({len(writes[s])}): {[hex(x) for x in writes[s]]}")
