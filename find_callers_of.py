#!/usr/bin/env python3
"""Find bl #addr callers in .text for a set of target VAs."""
from elftools.elf.elffile import ELFFile
import struct

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = sec.data(); text_va = sec["sh_addr"]; break
else:
    raise SystemExit("no .text")

import sys
targets = [int(x, 16) for x in sys.argv[1:]]

# bl: 0x94000000 | imm26 ; target = pc + (imm26 sign-extended <<2)
callers = {}
for off in range(0, len(text)-4, 4):
    insn = struct.unpack_from('<I', text, off)[0]
    if (insn & 0xFC000000) == 0x94000000:
        imm26 = insn & 0x3FFFFFF
        if imm26 & 0x2000000:
            imm26 -= 0x4000000
        target = text_va + off + (imm26 << 2)
        if target in targets:
            callers.setdefault(target, []).append(text_va + off)

for t in targets:
    print(f"### callers of 0x{t:x}:")
    for c in callers.get(t, []):
        print(f"  0x{c:x}")
