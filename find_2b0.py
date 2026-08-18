#!/usr/bin/env python3
"""Find all writes/reads to object-store field [x26, #0x2b0] in libapp.so .text,
plus all callers of 0x44d084 with their pp offset loads (add xN,x27,#...lsl#12 / ldr [xN,#imm])."""
import struct
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
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True

# 1) writes to x26,#0x2b0 : str xN, [x26, #0x2b0] = 0xF9000C00 | N<<5 | (0x2b0/8)<<10
#    str (unscaled imm) encoding: 0xF9000000 | (N<<5) | (imm12<<10), imm12 = 0x2b0>>3 = 0x56
imm12 = 0x2b0 >> 3
print("=== writes to [x26, #0x2b0] ===")
for N in range(32):
    insn = struct.pack("<I", 0xF9000000 | (N<<5) | (imm12<<10))
    pos = 0
    while True:
        idx = code.find(insn, pos)
        if idx == -1:
            break
        va = text[0] + idx
        print(f"  0x{va:x}: str x{N}, [x26, #0x2b0]")
        pos = idx + 1

# 2) reads of [x26, #0x2b0] : ldr xN, [x26, #0x2b0] = 0xF9400000 | (N<<5) | (imm12<<10)
print("=== reads of [x26, #0x2b0] ===")
for N in range(32):
    insn = struct.pack("<I", 0xF9400000 | (N<<5) | (imm12<<10))
    pos = 0
    cnt = 0
    while True:
        idx = code.find(insn, pos)
        if idx == -1:
            break
        va = text[0] + idx
        print(f"  0x{va:x}: ldr x{N}, [x26, #0x2b0]")
        cnt += 1
        pos = idx + 1
    if cnt == 0:
        pass

# 3) callers of 0x44d084: bl #0x44d084 -> offset
#    bl encoding: 0x94000000 | ((target - (pc)) >> 2) & 0x3ffffff
def bl_to(pc, target):
    diff = target - pc
    return 0x94000000 | ((diff >> 2) & 0x3ffffff)

pat = struct.pack("<I", bl_to(0, 0x44d084))
# need per-pc; instead scan: for each 4-byte window decode potential bl
import re
print("=== callers of 0x44d084 ===")
pos = 0
while True:
    idx = code.find(0, pos)  # dummy
    break
# manual scan
insns = list(md.disasm(code, text[0]))
for i, insn in enumerate(insns):
    if insn.mnemonic == "bl" and insn.op_str == "#0x44d084":
        # look back up to 8 insns for add xN,x27,#imm lsl#12 followed by ldr xN,[xN,#imm]
        pp = []
        for j in range(max(0, i-8), i):
            p = insns[j]
            pp.append(f"0x{p.address:x}: {p.mnemonic} {p.op_str}")
        print(f"  caller at 0x{insn.address:x}:")
        for line in pp[-6:]:
            print(f"    {line}")
f.close()
