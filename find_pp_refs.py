#!/usr/bin/env python3
"""Find refs to a given pp string offset with any base/target register.
usage: python3 find_pp_refs.py 0x17d80
"""
import struct, sys

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
code = data[text_off:text_off+text_size]

target = int(sys.argv[1], 16)
page = target >> 12
off_in_page = target & 0xFFF
ldr_imm = off_in_page // 8
assert off_in_page % 8 == 0, "offset must be 8-aligned"

print(f"target pp+0x{target:x} = page 0x{page:x}, ldr imm 0x{ldr_imm:x} ({off_in_page})")

hits = []
for i in range(0, len(code) - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & 0xFF800000) != 0x91000000:  # ADD immediate (bit22 shift is outside mask)
        continue
    imm12 = (w >> 10) & 0xFFF
    if imm12 != page:
        continue
    rn = (w >> 5) & 0x1F
    rd = w & 0x1F
    for j in range(i+4, min(i+4+6*4, len(code)), 4):
        w2 = struct.unpack_from("<I", code, j)[0]
        if (w2 & 0xFFC003E0) == (0xF9400000 | (rd << 5)):
            imm2 = (w2 >> 10) & 0xFFF
            if imm2 == ldr_imm:
                hits.append((text_addr + i, rn, rd, text_addr + j))
            break
        if (w2 & 0xFF800000) == 0x91000000:
            break

print(f"hits: {len(hits)}")
for va, rn, rd, lva in hits:
    print(f"  @0x{va:x}: add x{rd}, x{rn}, #0x{page:x}, lsl#12 ; ldr x{rd},[x{rd},#0x{off_in_page:x}]  (ldr@0x{lva:x})")
