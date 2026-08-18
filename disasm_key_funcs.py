#!/usr/bin/env python3
"""Disassemble the key functions around RSA decrypt, config builder, parse_secret/api."""
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

def read_va(va, size):
    off = va_to_off(va)
    if off is None:
        return None
    f.seek(off)
    return f.read(size)

text = None
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
    0x404e94: "RSA decrypt (magic not found)",
    0x7a4230: "_decryptRsa",
    0x79773c: "secret_parse_api_url / config builder",
    0x504b60: "parse_secret",
    0x504bd8: "parse_api",
    0x504c54: "extra_parse_api",
    0x3abd54: "URL construction (https://xdd)",
    0x48e630: "_Ajg blob ref",
    0x7a3860: "app_config",
    0x7a44b0: "appKey",
    0x504e48: "core_params",
    0x789558: "sign_md5",
    0x77cd04: "csrf",
}

for ref, label in targets.items():
    fn = find_func_start(ref)
    if fn is None:
        print(f"\n########## {label}  (ref@0x{ref:x}) ##########")
        print("  !! could not find func start")
        continue
    code2 = read_va(fn, 0x220)
    print(f"\n########## {label}  (fn_start=0x{fn:x}, ref@0x{ref:x}) ##########")
    if code2:
        for insn in md.disasm(code2, fn):
            mark = "  <== REF" if insn.address == ref else ""
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
