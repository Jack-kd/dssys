#!/usr/bin/env python3
"""Disassemble 0x44d084 (base URL + path concat) and decode nearby pp strings."""
import struct, binascii, re
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate_hex(hex_str):
    raw = binascii.unhexlify(hex_str)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

def pretty(b):
    try:
        return repr(b.decode("utf-8"))
    except Exception:
        return repr(b)

# decode pp offsets from pp.txt
def pp_str(off):
    with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
        for line in f:
            m = re.match(r"\[pp\+0x%x\]\s+String:\s+.*\"([0-9a-fA-F]+)\"" % off, line)
            if m:
                return pretty(deobfuscate_hex(m.group(1)))
    return None

for off in [0xb798, 0xeb90, 0xf278, 0x15718, 0x15720, 0x15728, 0x14e90]:
    print(f"pp+0x{off:x} -> {pp_str(off)}")

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
PROLOGUE = b"\xfd\xbf\xa9"

def find_func_start(va, max_back=0x2000):
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

func = find_func_start(0x44d084) or (0x44d084 - 0x40)
print(f"\nfunc_start(0x44d084) = {func:#x}")
roff = func - text[0]
end = min(roff + 0x300, size)
for insn in md.disasm(code[roff:end], func):
    mark = "  <<<<" if 0x44d070 <= insn.address <= 0x44d0b0 else ""
    print(f"  0x{insn.address:08x}: {insn.mnemonic:8s} {insn.op_str}{mark}")
