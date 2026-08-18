#!/usr/bin/env python3
"""Find code locations in libapp.so that reference specific PP string offsets."""
import sys, re
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
va0, va1 = text
off0 = va_to_off(va0)
f.seek(off0)
code = f.read(va1 - va0)

# labels: pp offset -> name
targets = {}
for a in sys.argv[1:]:
    if "=" in a:
        off, name = a.split("=")
        targets[int(off, 16)] = name
    else:
        targets[int(a, 16)] = hex(int(a, 16))

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.detail = True
addre = re.compile(r'^x(\d+), x27, #(0x[0-9a-fA-F]+), lsl #12$')
ldrre = re.compile(r'^x(\d+), \[x\1, #(0x[0-9a-fA-F]+)\]$')

refs = {}
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
            refs.setdefault(off, []).append((a.address, a.mnemonic + " " + a.op_str))
    base += CHUNK
f.close()

for off in sorted(refs):
    name = targets[off]
    print(f"=== pp+0x{off:x} {name}: {len(refs[off])} refs ===")
    for addr, text_ in refs[off][:40]:
        print(f"  0x{addr:08x}: {text_}")
