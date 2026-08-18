#!/usr/bin/env python3
"""Disassemble enclosing functions for a list of target VAs (tolerant)."""
import sys
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
        f.seek(sec["sh_offset"])
        code = f.read(sec["sh_size"])
        break

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
PROLOGUE = b"\xfd\xbf\xa9"

def find_func_start(va, max_back=0x10000):
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

def disasm(va, length=0x400, label=""):
    start = find_func_start(va)
    if start is None:
        start = va - 0x40
    print(f"\n{'='*72}\n{label} func_start={start:#x} (target {va:#x})\n{'='*72}")
    roff = start - text[0]
    end = min(roff + length, len(code))
    pos = roff
    while pos < end:
        insns = list(md.disasm(code[pos:pos+16], text[0]+pos, count=1))
        if not insns:
            print(f"  0x{text[0]+pos:08x}: .byte 0x{code[pos]:02x}   <-- invalid")
            pos += 1
            continue
        insn = insns[0]
        mark = "  <<<<" if (va-0x60) <= insn.address <= (va+0x10) else ""
        print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
        pos += insn.size

which = sys.argv[1]
if which == "decrypt":
    disasm(0x404e94, 0x500, "SECRET DECRYPT (magic/secret-part errors)")
elif which == "parse":
    disasm(0x504b60, 0x300, "parse_secret / parse_api / extra_parse_api")
elif which == "ajg":
    disasm(0x48e630, 0x200, "_Ajg getter")
elif which == "cfg":
    disasm(0x79773c, 0x300, "secret_parse_api_url config builder")
elif which == "sign":
    disasm(0x789558, 0x300, "sign_md5 signer")
