#!/usr/bin/env python3
"""Fast PP reference scanner using raw byte-pattern matching for
add xR, x27, #imm, lsl #12  +  ldr xM, [xR, #imm2]  (pool loads)."""
import struct
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
print(f".text: 0x{text[0]:x} - 0x{text[1]:x}  size=0x{text[1]-text[0]:x}", flush=True)

off = va_to_off(text[0])
size = text[1] - text[0]
f.seek(off)
code = f.read(size)

# ---- Pattern 1: add xRd, x27, #imm, lsl #12 ----
# ADD imm shift lsl12: 0x91000000 | (0b10 << 22) | (imm12<<10) | (Rn<<5) | Rd
# bits[29:23] = 1001001 0 -> with shift bits 23:22 = 10
# base word mask (keep bits 31..10 of imm + Rn 9:5): 0xFFFFFC00 (clear Rd bits 4:0)
# mask keeps bits [31:22] (opcode+shift) + imm12[21:10] + Rn[9:5]; clears Rd
ADD_MASK = 0xFFC003E0
# 0x91000000 | (0b10<<22) | (27<<5) = 0x91800000 | 0x360
ADD_FIXED = 0x91800000 | (27 << 5)  # = 0x91800360

# ---- Pattern 2: ldr xRt, [xRn, #imm]  (unsigned imm, 64-bit) ----
# 0xF9400000 | (imm12 << 10) | (Rn << 5) | Rt ; imm = imm12 * 8
LDR_MASK_RN = 0xFFC003E0  # keep imm12(21:10) and Rn(9:5), clear Rt
# for a given Rn, fixed = 0xF9400000 | (Rn<<5)

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

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
    0x24a88: "deviceId",
    0x2e450: "token",
    0x123d0: "last_login_token",
    0x1ecd0: "recommend_id",
    0x1ecd8: "index_recommend_video_list",
    0x32ce8: "index_recommend",
    0x1ec48: "(near index_recommend?)",
}

# collect add sites
add_sites = []
for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & ADD_MASK) == ADD_FIXED:
        imm12 = (w >> 10) & 0xFFF
        rd = w & 0x1F
        base = imm12 << 12
        add_sites.append((text[0] + i, base, rd))
print(f"add xR,x27,lsl#12 sites: {len(add_sites)}", flush=True)

# For each add site, decode forward a window looking for ldr from same reg
results = {t: [] for t in targets}
tset = set(targets)
seen = set()

for (a, base, rd) in add_sites:
    # decode up to 24 instructions from this valid boundary
    idx = a - text[0]
    chunk = code[idx:idx + 24*4]
    for insn in md.disasm(chunk, a):
        if insn.mnemonic == "ldr":
            mm = re.match(r'x\d+,\s*\[x(\d+),\s*#(0x[0-9a-fA-F]+)\]', insn.op_str)
            if mm and int(mm.group(1)) == rd:
                eff = base + int(mm.group(2), 16)
                if eff in tset:
                    key = (eff, a)
                    if key not in seen:
                        seen.add(key)
                        results[eff].append(a)
                break
        if insn.mnemonic == "add" and "x27" in insn.op_str and "lsl #12" in insn.op_str:
            break

# also direct ldr xR, [x27, #imm]
for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & LDR_MASK_RN) == (0xF9400000 | (27 << 5)):
        imm12 = (w >> 10) & 0xFFF
        eff = imm12 * 8
        if eff in tset:
            results[eff].append(text[0] + i)

for t, label in targets.items():
    refs = sorted(set(results[t]))
    print(f"\n=== {label} (pp+0x{t:x}): {len(refs)} refs ===")
    for a in refs[:6]:
        print(f"  ref@0x{a:x}")
f.close()
