#!/usr/bin/env python3
"""Debug: inspect bytes before each ref to find prologue."""
import struct
from elftools.elf.elffile import ELFFile

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

PROLOGUE = b"\xfd\x7b\xbf\xa9"

refs = {
    0x7c7d40: "getSign",
    0x504e48: "core_params",
    0x78955c: "sign_md5",
    0x3abda0: "https://xdd",
    0x44d504: "/ndsx.php/v7",
}

for ref, name in refs.items():
    roff = ref - text[0]
    window = code[roff-0x300:roff+8]
    # find all prologue occurrences in window
    idxs = []
    pos = 0
    while True:
        i = window.find(PROLOGUE, pos)
        if i == -1:
            break
        idxs.append(roff - 0x300 + i)
        pos = i + 1
    print(f"{name} ref@{ref:#x} roff=0x{roff:x}  prologues_in_0x300_back: {[hex(text[0]+i) for i in idxs]}")
    # also show bytes at ref-0x20
    print(f"  bytes@ref-0x20: {code[roff-0x20:roff].hex()}")
