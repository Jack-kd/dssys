#!/usr/bin/env python3
"""Find refs to pp+0x160d8 with ANY base register for the add, ANY target for ldr.
0x160d8 = page 0x16 (lsl 12) + 0xd8 ; ldr imm = 0xd8/8 = 0x1b
"""
import struct

so = "/workspace/extract/libapp.so"
data = open(so, "rb").read()
e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
e_shentsize = struct.unpack_from("<H", data, 0x3a)[0]
e_shnum = struct.unpack_from("<H", data, 0x3c)[0]
e_shstrndx = struct.unpack_from("<H", data, 0x3e)[0]
shstr = e_shoff + e_shstrndx * e_shentsize
shstr_off = struct.unpack_from("<Q", data, shstr + 0x18)[0]
shstr_size = struct.unpack_from("<Q", data, shstr + 0x20)[0]
shstr_tab = data[shstr_off:shstr_off+shstr_size]
text_addr = text_off = text_size = None
for i in range(e_shnum):
    sh = e_shoff + i * e_shentsize
    name_off = struct.unpack_from("<I", data, sh)[0]
    name = shstr_tab[name_off:shstr_tab.find(b"\0", name_off)].decode()
    if name == ".text":
        text_addr = struct.unpack_from("<Q", data, sh + 0x10)[0]
        text_off = struct.unpack_from("<Q", data, sh + 0x18)[0]
        text_size = struct.unpack_from("<Q", data, sh + 0x20)[0]
print(f".text 0x{text_addr:x} off=0x{text_off:x} size=0x{text_size:x}")
code = data[text_off:text_off+text_size]

PAGE = 0x16
LDR_IMM = 0x1b  # 0xd8/8

hits = []
for i in range(0, len(code) - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & 0xFF800000) != 0x91400000:  # add imm lsl12 sf=1
        continue
    imm12 = (w >> 10) & 0xFFF
    if imm12 != PAGE:
        continue
    rn = (w >> 5) & 0x1F
    rd = w & 0x1F
    # look ahead for ldr xrd,[xrd,#imm]
    for j in range(i+4, min(i+4+6*4, len(code)), 4):
        w2 = struct.unpack_from("<I", code, j)[0]
        if (w2 & 0xFFC003E0) == (0xF9400000 | (rd << 5)):
            imm2 = (w2 >> 10) & 0xFFF
            if imm2 == LDR_IMM:
                hits.append((text_addr + i, rn, rd, text_addr + j))
            break
        if (w2 & 0xFF800000) == 0x91400000:  # another add lsl12 -> stop
            break
print(f"hits: {len(hits)}")
for va, rn, rd, lva in hits:
    print(f"  add x{rd}, x{rn}, #0x{PAGE:x}, lsl#12 @0x{va:x}  ldr x{rd},[x{rd},#0xd8] @0x{lva:x}")
