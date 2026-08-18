#!/usr/bin/env python3
"""Find callers of the _Ajg getter (0x48e61c) and print surrounding context;
also dump full decoded strings for the ad config blobs."""
import re, binascii, struct
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff
def dec_hex(h):
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

for off in (0x16118, 0x16120, 0x16128, 0x14e78):
    if off in strings:
        print(f"pp+0x{off:x} -> {dec_hex(strings[off]).decode('utf-8','replace')}")

print()
# now find callers of 0x48e61c
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

def bl_target(insn):
    # capstone already resolves bl operand
    return insn.op_str

insns = list(md.disasm(code, text[0]))
print(f"=== callers of 0x48e61c (_Ajg getter) ===")
for i, insn in enumerate(insns):
    if insn.mnemonic == "bl" and insn.op_str == "#0x48e61c":
        print(f"--- caller at 0x{insn.address:x} ---")
        for j in range(max(0,i-10), i+1):
            p = insns[j]
            print(f"  0x{p.address:x}: {p.mnemonic} {p.op_str}")
print()
print(f"=== callers of 0x48e5d0 (zXa closure) ===")
for i, insn in enumerate(insns):
    if insn.mnemonic == "bl" and insn.op_str == "#0x48e5d0":
        print(f"  caller at 0x{insn.address:x}")
f.close()
