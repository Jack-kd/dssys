#!/usr/bin/env python3
"""Find code references to pp+0x160d8 in libapp.so .text.
Pattern: add xR, x27, #0x16, lsl #12  ; then ldr xR, [xR, #0xd8]
0x160d8 = page 0x16 (lsl 12) + 0xd8
"""
import struct

so = "/workspace/extract/libapp.so"
data = open(so, "rb").read()

# parse ELF to find .text
assert data[:4] == b"\x7fELF"
is64 = data[4] == 2
e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
e_shentsize = struct.unpack_from("<H", data, 0x3a)[0]
e_shnum = struct.unpack_from("<H", data, 0x3c)[0]
e_shstrndx = struct.unpack_from("<H", data, 0x3e)[0]
shstr = e_shoff + e_shstrndx * e_shentsize
shstr_off = struct.unpack_from("<Q", data, shstr + 0x18)[0]
shstr_size = struct.unpack_from("<Q", data, shstr + 0x20)[0]
shstr_tab = data[shstr_off:shstr_off+shstr_size]

text_addr = None
text_off = None
text_size = None
for i in range(e_shnum):
    sh = e_shoff + i * e_shentsize
    name_off = struct.unpack_from("<I", data, sh)[0]
    name = shstr_tab[name_off:shstr_tab.find(b"\0", name_off)].decode()
    if name == ".text":
        text_addr = struct.unpack_from("<Q", data, sh + 0x10)[0]
        text_off = struct.unpack_from("<Q", data, sh + 0x18)[0]
        text_size = struct.unpack_from("<Q", data, sh + 0x20)[0]
        break
print(f".text addr=0x{text_addr:x} off=0x{text_off:x} size=0x{text_size:x}")

code = data[text_off:text_off+text_size]

def disasm_refs(target_page, target_off, label):
    # find `add xR, x27, #page, lsl#12` : 0x91400000 | (page<<10) | (27<<5) | R
    found = []
    for R in range(31):
        insn = 0x91400000 | (target_page << 10) | (27 << 5) | R
        b = struct.pack("<I", insn)
        idx = 0
        while True:
            idx = code.find(b, idx)
            if idx < 0:
                break
            va = text_addr + idx
            # look at following instructions for ldr xR, [xR, #imm]
            found.append((va, R))
            idx += 4
    print(f"== add xR,x27,#0x{target_page:x},lsl#12 sites for {label} ==")
    for va, R in found:
        off_in = va - text_addr
        # decode following ldr xR,[xR,#imm]
        ldr_imm = None
        for j in range(off_in+4, min(off_in+4+8*4, text_size), 4):
            w = struct.unpack_from("<I", code, j)[0]
            if (w & 0xFFC003E0) == (0xF9400000 | (R << 5)):
                ldr_imm = ((w >> 10) & 0xFFF) * 8
                break
            if (w & 0xFFC003E0) == (0x914003E0 & 0xFFC003E0):  # another add lsl#12
                break
        if ldr_imm == target_off:
            print(f"  0x{va:x}: add x{R},x27,#0x{target_page:x},lsl#12 ; ldr x{R},[x{R},#{ldr_imm:#x}]  <-- MATCH pp+0x{target_page<<12|ldr_imm:x}")
        else:
            print(f"  0x{va:x}: add x{R},x27,#0x{target_page:x},lsl#12 ; ldr x{R},[x{R},#{ldr_imm if ldr_imm is not None else 0:#x}]")

disasm_refs(0x16, 0xd8, "bigblob 0x160d8")
