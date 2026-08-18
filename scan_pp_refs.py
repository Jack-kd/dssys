#!/usr/bin/env python3
"""Scan libapp.so .text for PP(x27) pool loads matching target offsets, report function context."""
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

# find text segment bounds
text = None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
print(f".text: 0x{text[0]:x} - 0x{text[1]:x}")

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

# scan whole text, tracking add x, x27, #imm, lsl #12 base
insns = []
off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)
for insn in md.disasm(code, text[0]):
    insns.append(insn)
print(f"total insns: {len(insns)}")

# map address -> index
addr2idx = {insn.address: i for i, insn in enumerate(insns)}

def load_target(insn, cur_base):
    # returns effective pp offset if this is a pool load from PP
    op = insn.op_str
    if insn.mnemonic == "ldr":
        # ldr xN, [x27, #imm]  or  ldr xN, [xR, #imm]
        m = op.split(", ")
        if len(m) == 2 and m[1].startswith("["):
            inner = m[1][1:-1]
            parts = inner.split(", #")
            if len(parts) == 2:
                reg, imm = parts[0].strip(), int(parts[1], 16)
                if reg == "x27":
                    return imm
                if reg.startswith("x") and cur_base is not None:
                    return cur_base + imm
    return None

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
    0x16ff0: "(enc after getSign)",
    0x29778: "parse_api",
}

# find function start = nearest preceding 'ret' or prologue. We'll just report surrounding insns.
results = {t: [] for t in targets}
for i, insn in enumerate(insns):
    # track add x?, x27, #imm, lsl #12
    cur_base = None
    # We'll do a forward window per instruction
    pass

# Better: for each instruction, look ahead within same basic block window for a pool load
for i, insn in enumerate(insns):
    # try to detect add x?, x27, #imm, lsl #12 and then ldr within next 20 insns
    op = insn.op_str
    if insn.mnemonic == "add" and "x27" in op and "lsl #12" in op:
        # e.g. add x2, x27, #0x16, lsl #12
        import re
        m = re.match(r'x(\d+),\s*x27,\s*#(0x[0-9a-fA-F]+),\s*lsl #12', op)
        if m:
            regnum = int(m.group(1))
            base_hi = int(m.group(2), 16)
            base = base_hi << 12
            # look ahead up to 24 insns for ldr xN, [x{regnum}, #imm]
            for j in range(i+1, min(i+25, len(insns))):
                nxt = insns[j]
                if nxt.mnemonic == "ldr":
                    mm = re.match(r'x(\d+),\s*\[x(\d+),\s*#(0x[0-9a-fA-F]+)\]', nxt.op_str)
                    if mm and int(mm.group(2)) == regnum:
                        eff = base + int(mm.group(3), 16)
                        for t, label in targets.items():
                            if eff == t:
                                results[t].append(insn.address)
                        break
                if nxt.mnemonic == "add" and "x27" in nxt.op_str:
                    break
    elif insn.mnemonic == "ldr":
        # direct ldr xN, [x27, #imm]
        mm = re.match(r'x(\d+),\s*\[x27,\s*#(0x[0-9a-fA-F]+)\]', op)
        if mm:
            eff = int(mm.group(2), 16)
            for t, label in targets.items():
                if eff == t:
                    results[t].append(insn.address)

for t, label in targets.items():
    refs = sorted(set(results[t]))
    print(f"\n=== {label} (pp+0x{t:x}): {len(refs)} refs ===")
    for a in refs[:10]:
        # print function context: find start (prev 'ret'/'br'/'b') 
        i = addr2idx.get(a)
        if i is None:
            continue
        # back up to find a boundary
        start = max(0, i-3)
        for k in range(i-1, -1, -1):
            if insns[k].mnemonic in ("ret", "br", "blr", "b"):
                # heuristic: function usually starts after ret with stp x29
                start = k+1
                break
        # print a few insns around the reference
        ctx = []
        for k in range(max(0,start), min(len(insns), i+6)):
            ctx.append(f"0x{insns[k].address:x}: {insns[k].mnemonic} {insns[k].op_str}")
        print(f"  ref@0x{a:x}  func_start~0x{insns[start].address:x}")
        for line in ctx:
            print(f"    {line}")
f.close()
