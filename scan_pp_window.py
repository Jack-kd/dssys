#!/usr/bin/env python3
"""Disassemble 0x504xxx region (config map builder) + 0x44dxxx (/ndsx.php/v7 usage)."""
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

# decode PP string offsets referenced via add x27 lsl#12 + ldr
def decode_pp_refs(start, end):
    """print (addr, pp_offset) for ldr x1,[x?,#imm] preceded by add from x27."""
    out = []
    for i in range(start - text[0], min(end - text[0], size - 4), 4):
        w = struct.unpack_from("<I", code, i)[0]
        if (w & 0xFFC003E0) == 0x91400360:  # add xRd, x27, #imm, lsl #12
            rd = w & 0x1F
            page = ((w >> 10) & 0xFFF) << 12
            for j in range(i+4, min(i+4*8, size-4), 4):
                w2 = struct.unpack_from("<I", code, j)[0]
                if (w2 & 0xFFC003E0) == (0xF9400000 | (rd << 5)):
                    imm12 = (w2 >> 10) & 0xFFF
                    eff = page + imm12 * 8
                    out.append((text[0]+j, eff))
                    break
                if (w2 & 0xFFC003E0) in (0x91400360, 0x91000360):
                    break
    return out

for name, (s, e) in {
    "config-builder region": (0x504a00, 0x505300),
    "/ndsx.php/v7 region": (0x44d000, 0x44d900),
}.items():
    print(f"\n===== {name} : {s:#x}-{e:#x} =====")
    refs = decode_pp_refs(s, e)
    for a, pp in refs:
        print(f"  0x{a:08x} -> pp+0x{pp:x}")
