#!/usr/bin/env python3
"""Find all refs to pp page 0x20: add xN, x27, #0x20, lsl#12 ; then ldr xN,[xN,#imm]."""
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

PAGE = 0x20
hits = []
for off in range(0, len(text)-8, 4):
    insn = struct.unpack_from('<I', text, off)[0]
    if (insn & 0xFFC00000) == 0x91400000 and ((insn >> 5) & 0x1F) == 27:
        rd = insn & 0x1F
        imm12 = (insn >> 10) & 0xFFF
        if imm12 == PAGE:
            va = text_va + off
            # next insn
            nxt = struct.unpack_from('<I', text, off+4)[0]
            ldr_imm = None
            if (nxt & 0xFFC00000) == 0xF9400000:
                rn = (nxt >> 5) & 0x1F
                rt = nxt & 0x1F
                if rn == rd and rt == rd:
                    ldr_imm = (nxt >> 10) & 0xFFF
            hits.append((va, rd, ldr_imm))

print(f"refs to pp page 0x20 (add xN,x27,#0x20,lsl#12): {len(hits)}")
for va, rd, li in sorted(hits):
    offs = 0x20000 + (li if li is not None else -1)
    print(f"0x{va:x}: add x{rd},x27,#0x20,lsl#12 ; ldr x{rd},[x{rd},#{li if li is not None else 0:#x}] -> pp+0x{offs:05x}")
