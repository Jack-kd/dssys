#!/usr/bin/env python3
"""Scan libapp.so .text for PP(x27) pool loads matching target offsets.
Robust disassembly: skip invalid 4-byte words, advance 4 bytes each time."""
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
import re

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
print(f".text: 0x{text[0]:x} - 0x{text[1]:x}  size=0x{text[1]-text[0]:x}")

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True  # skip invalid bytes

off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

# Robust iterate
insns = []
addr = text[0]
while addr < text[1]:
    idx = addr - text[0]
    chunk = code[idx:]
    for insn in md.disasm(chunk, addr):
        insns.append(insn)
        addr = insn.address + insn.size
        break
    else:
        addr += 4
print(f"total insns: {len(insns)}")

targets = {
    0x16fe8: "getSign",
    0x1ebb8: "core_params",
    0x1e608: "sign_md5",
    0x17d80: "https://xdd",
    0x17d78: "https://xdd/video?id=",
    0x14e88: "/ndsx.php/v7",
    0x1eb18: "extra_parse_api",
    0x1eac8: "parse_secret",
    0x20fe0: "secret_parse_api_url",
    0x16fd8: "flutter_android_sign",
    0x29778: "parse_api",
    0x16138: "appKey",
    0x16140: "channel",
    0x118e8: "csrf",
    0x118a0: "version",
}

# precompute sets
target_set = set(targets)

# Build list of (addr, op) for add x27 lsl12
adds = []  # (addr, regnum, base)
for i, insn in enumerate(insns):
    if insn.mnemonic == "add" and "x27" in insn.op_str and "lsl #12" in insn.op_str:
        m = re.match(r'x(\d+),\s*x27,\s*#(0x[0-9a-fA-F]+),\s*lsl #12', insn.op_str)
        if m:
            adds.append((i, int(m.group(1)), int(m.group(2), 16) << 12))

# scan: for each add x27 lsl12, look ahead for ldr from that reg
results = {t: [] for t in targets}
for i, regnum, base in adds:
    for j in range(i+1, min(i+40, len(insns))):
        nxt = insns[j]
        if nxt.mnemonic == "ldr":
            mm = re.match(r'x(\d+),\s*\[x(\d+),\s*#(0x[0-9a-fA-F]+)\]', nxt.op_str)
            if mm and int(mm.group(2)) == regnum:
                eff = base + int(mm.group(3), 16)
                if eff in target_set:
                    results[eff].append(insn.address if False else insns[i].address)
                break
        # stop window at next add x27 lsl12 (new base)
        if nxt.mnemonic == "add" and "x27" in nxt.op_str and "lsl #12" in nxt.op_str:
            break

# direct ldr xN, [x27, #imm]
for insn in insns:
    if insn.mnemonic == "ldr":
        mm = re.match(r'x(\d+),\s*\[x27,\s*#(0x[0-9a-fA-F]+)\]', insn.op_str)
        if mm:
            eff = int(mm.group(2), 16)
            if eff in target_set:
                results[eff].append(insn.address)

for t, label in targets.items():
    refs = sorted(set(results[t]))
    print(f"\n=== {label} (pp+0x{t:x}): {len(refs)} refs ===")
    for a in refs[:8]:
        # function context: back up to stp x29,x30 or ret boundary within 30 insns
        i = None
        for k, insn in enumerate(insns):
            if insn.address == a:
                i = k
                break
        start = max(0, i-2)
        for k in range(i-1, max(0, i-40), -1):
            if insns[k].mnemonic == "ret" or (insns[k].mnemonic == "stp" and "x29, x30" in insns[k].op_str):
                start = k
                break
        ctx = []
        for k in range(max(0,start), min(len(insns), i+5)):
            ctx.append(f"0x{insns[k].address:x}: {insns[k].mnemonic} {insns[k].op_str}")
        print(f"  ref@0x{a:x}  func~0x{insns[start].address:x}")
        for line in ctx:
            print(f"    {line}")
f.close()
