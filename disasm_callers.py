#!/usr/bin/env python3
"""Disassemble callers: 0x77cf20 (rsa decrypt), 0x796d3c (config builder), 0x7a3610, 0x7a3df4, _Ajg getter 0x48e61c."""
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

def read_va(va, size):
    off = va_to_off(va)
    if off is None:
        return None
    f.seek(off)
    return f.read(size)

for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
        f.seek(sec["sh_offset"])
        code = f.read(sec["sh_size"])
        break

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
PROLOGUE = b"\xfd\x79\xbf\xa9"

def find_func_start(va, max_back=0x4000):
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

targets = {
    0x77cf20: "caller of rsa decrypt core",
    0x796d3c: "caller of config builder",
    0x7a3610: "caller of app_config",
    0x7a3df4: "caller of _decryptRsa",
    0x48e61c: "_Ajg getter (full)",
    0x48e650: "calls 0x797688 (inside _Ajg getter)",
    0x797688: "?? (config load)",
    0x3abdbc: "url concat big fn",
}

for ref, label in targets.items():
    fn = find_func_start(ref)
    if fn is None:
        fn = ref
    size = 0x280
    code2 = read_va(fn, size)
    print(f"\n########## {label}  (fn_start=0x{fn:x}, ref@0x{ref:x}) ##########")
    if code2:
        for insn in md.disasm(code2, fn):
            mark = "  <== REF" if insn.address == ref else ""
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
