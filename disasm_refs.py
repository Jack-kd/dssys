#!/usr/bin/env python3
"""Disassemble functions enclosing the PP references to extract API logic."""
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

# find function start: scan backwards for standard prologue stp x29, x30, [sp, #-N]!
PROLOGUE = b"\xfd\xbf\xa9"  # stp x29, x30, [sp, #-imm]! (imm varies)
def find_func_start(va, max_back=0x1000):
    off = va - text[0]
    start = max(0, off - max_back)
    best = None
    pos = start
    while pos <= off:
        idx = code.find(PROLOGUE, pos, off + 4)
        if idx == -1:
            break
        best = text[0] + idx
        pos = idx + 1
    return best

refs = {
    0x7c7d40: "getSign",
    0x504e48: "core_params",
    0x78955c: "sign_md5",
    0x3abda0: "https://xdd",
    0x3abd6c: "https://xdd/video?id=",
    0x44d504: "/ndsx.php/v7",
    0x504c58: "extra_parse_api",
    0x504b64: "parse_secret",
    0x797740: "secret_parse_api_url",
    0x669858: "flutter_android_sign",
}

for ref, name in refs.items():
    # disassemble a fixed window around the ref; find nearest prologue if any
    func = find_func_start(ref) or (ref - 0x80)
    print(f"\n===== {name}  ref@{ref:#x}  func_start={func and func:#x} =====")
    off = func - text[0]
    end = min(off + 0x400, size)
    for insn in md.disasm(code[off:end], func):
        mark = "  <<<< REF" if ref-0x10 <= insn.address <= ref+0x10 else ""
        print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
