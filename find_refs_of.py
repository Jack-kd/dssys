#!/usr/bin/env python3
"""Find refs (add xN,x27,#hi,lsl#12; ldr xN,[xN,#lo]) to specific pp offsets."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
import re, sys

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
va0, va1 = text
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)

strings = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as pf:
    for line in pf:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"", line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)

# targets from command line: hex offsets
targets = set(int(x, 16) for x in sys.argv[1:])

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
addre = re.compile(r'^x(\d+), x27, #(0x[0-9a-fA-F]+), lsl #12$')
ldrre = re.compile(r'^x(\d+), \[x\1, #(0x[0-9a-fA-F]+)\]$')

CHUNK = 0x20000
OVERLAP = 16
base = 0
while base < len(code):
    chunk = code[base:base + CHUNK + OVERLAP]
    insns = list(md.disasm(chunk, va0 + base))
    for i in range(len(insns) - 1):
        a = insns[i]
        b = insns[i+1]
        m = addre.match(a.op_str.strip())
        if not m:
            continue
        hi = int(m.group(2), 16)
        n = int(m.group(1))
        m2 = ldrre.match(b.op_str.strip())
        if not m2:
            continue
        lo = int(m2.group(2), 16)
        off = (hi << 12) | (lo & 0xfff)
        if off in targets:
            s = strings.get(off)
            print(f"pp+0x{off:x} {s!r}: ref at 0x{a.address:x} ({a.mnemonic} {a.op_str} ; {b.mnemonic} {b.op_str})")
    base += CHUNK
f.close()
