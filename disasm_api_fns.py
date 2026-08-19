#!/usr/bin/env python3
"""Disassemble functions referencing API config strings to extract request-building logic."""
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

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

# Functions to disassemble: find function start by scanning backward for prologue
targets = {
    0x504e48: "core_params ref",
    0x44d504: "/ndsx.php/v7 ref",
    0x3abda0: "https://xdd ref",
    0x7c7d40: "getSign ref",
    0x78955c: "sign_md5 ref",
    0x77cd08: "csrf ref",
    0x7a44b4: "appKey ref",
    0x79f3a8: "deviceId ref",
    0x77c9ec: "version ref",
    0x468220: "token ref",
}

def find_func_start(va):
    """Scan backward for stp x29, x30, [xSP, #-N]! prologue pattern (0xa9bf7bfd style)."""
    off = va_to_off(va)
    if off is None:
        return va
    # read 0x200 bytes before
    start = max(0, off - 0x400)
    f.seek(start)
    chunk = f.read(off - start)
    # look for a9bf 7bfd (stp x29,x30,[sp,#-0x10]!)
    import struct
    best = None
    pos = len(chunk) - 4
    while pos >= 0:
        w = struct.unpack_from("<I", chunk, pos)[0]
        # stp x29, x30, [sp, #-imm]!  = 0xa9800000 | (imm9? ) pattern
        # common: 0xa9bf7bfd (imm=-0x10), 0xa9b87bfd (-0x80), 0xa9b07bfd
        if (w & 0xFFFFFC00) == 0xA9800000 and (w & 0x3FF) == 0x3FD:  # Rt=29 Rt2=30
            # This is stp x29, x30, [sp, #imm]!
            candidate = start + pos
            # accept nearest one before va within reasonable distance
            if best is None:
                best = candidate
        pos -= 4
    if best is not None:
        return best
    return va

for ref, label in targets.items():
    # find function start
    fn = find_func_start(ref)
    # disassemble from fn for ~0x200 bytes
    code = read_va(fn, 0x220)
    print(f"\n########## {label}  (fn_start=0x{fn:x}, ref@0x{ref:x}) ##########")
    if code:
        for insn in md.disasm(code, fn):
            mark = "  <== REF" if insn.address == ref else ""
            print(f"0x{insn.address:x}: {insn.mnemonic}\t{insn.op_str}{mark}")
f.close()
