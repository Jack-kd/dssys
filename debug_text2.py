#!/usr/bin/env python3
"""Read bytes at specific VAs and check if valid ARM64 instructions."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)
segs = []
for seg in elf.iter_segments():
    if seg["p_type"] == "PT_LOAD":
        segs.append((seg["p_vaddr"], seg["p_vaddr"]+seg["p_filesz"], seg["p_offset"]))
print("segments:")
for v0,v1,o0 in segs:
    print(f"  vaddr=0x{v0:x} vaddr_end=0x{v1:x} off=0x{o0:x}")

def va_to_off(va):
    for v0, v1, o0 in segs:
        if v0 <= va < v1:
            return o0 + (va - v0)
    return None

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

# Check known function 0x4ae480
for va in [0x210000, 0x4ae480, 0x22dd4c, 0x210008]:
    off = va_to_off(va)
    f.seek(off)
    code = f.read(32)
    print(f"\nVA=0x{va:x}  file_off=0x{off:x}")
    print(f"  hex: {code.hex()}")
    n = 0
    for insn in md.disasm(code, va):
        n += 1
        print(f"  0x{insn.address:x}: {insn.mnemonic} {insn.op_str}")
    print(f"  insns: {n}")

# Now scan .text but skip first 0x100 bytes (Dart snapshot metadata)
text = None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
        break
print(f"\n.text: 0x{text[0]:x} - 0x{text[1]:x}")

# Try to find the start of non-encrypted code by looking for stp x29,x30 pattern
off = va_to_off(text[0])
f.seek(off)
code = f.read(text[1]-text[0])
# Search for stp x29, x30, [x15, sp variant] pattern: fd 7b bf a9 (stp x29, x30, [x15, #-0x10]!)
# Actually stp x29, x30, [sp, #-0x10]! = 0xa9bf7bfd
pat = bytes([0xfd, 0x7b, 0xbf, 0xa9])
pos = 0
while True:
    idx = code.find(pat, pos)
    if idx == -1:
        break
    va = text[0] + idx
    print(f"found stp x29,x30 at VA=0x{va:x}  offset=0x{idx:x}")
    pos = idx + 1
    if pos > 0x1000:
        break

f.close()