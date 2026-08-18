#!/usr/bin/env python3
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
    print(f"  vaddr={v0:x} vaddr_end={v1:x} off={o0:x} size={v1-v0}")

def va_to_off(va):
    for v0, v1, o0 in segs:
        if v0 <= va < v1:
            return o0 + (va - v0)
    return None

text = None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
        print(f".text: {text[0]:x} - {text[1]:x}  size={text[1]-text[0]}")
if text is None:
    print("no .text section!")
    for sec in elf.iter_sections():
        print(f"  section: {sec.name}  type={sec['sh_type']}")

off = va_to_off(text[0])
print(f"text offset: {off}")
f.seek(off)
code = f.read(min(text[1]-text[0], 64))
print(f"first bytes: {code.hex()}")

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
n = 0
for insn in md.disasm(code, text[0]):
    n += 1
    print(f"0x{insn.address:x}: {insn.mnemonic} {insn.op_str}")
print(f"disasm count: {n}")
f.close()
