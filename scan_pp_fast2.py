#!/usr/bin/env python3
"""Fast PP reference scanner: direct ldr xN, [x27, #imm] patterns."""
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

# ldr xRt, [x27, #imm]  (unsigned imm, 64-bit)
# 0xF9400000 | (imm12 << 10) | (Rn << 5) | Rt ; imm = imm12 * 8
LDR_MASK = 0xFFC003E0  # opcode(31:22) + imm12(21:10) + Rn(9:5)
LDR_FIXED = 0xF9400000 | (27 << 5)  # = 0xF9400360

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
}

results = {t: [] for t in targets}
tset = set(targets)
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & LDR_MASK) == LDR_FIXED:
        # imm12 = (w >> 10) & 0xFFF, eff = imm12 * 8
        # But many Dart pool offsets are > 0x7FFF (max imm12*8 = 0x7FF8)
        # So we only find direct loads for small offsets (<= 0x7FF8)
        imm12 = (w >> 10) & 0xFFF
        eff = imm12 * 8
        if eff in tset:
            results[eff].append(text[0] + i)

# For larger offsets, Dart AOT uses: add xR, x27, #page, lsl #12 + ldr xT, [xR, #imm]
# Check that pattern too
for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    # add xRd, x27, #imm, lsl #12 (0x91400000 | (0b01<<22) | (27<<5) | rd)  shift=0b01=LSL#12
    if (w & 0xFFC003E0) == 0x91400360:
        rd = w & 0x1F
        page = ((w >> 10) & 0xFFF) << 12  # base = page
        # look ahead for ldr from same register
        for j in range(i+4, min(i+4*24, size-4), 4):
            w2 = struct.unpack_from("<I", code, j)[0]
            if (w2 & 0xFFC003E0) == (0xF9400000 | (rd << 5)):
                imm12 = (w2 >> 10) & 0xFFF
                eff = page + imm12 * 8
                if eff in tset:
                    results[eff].append(text[0] + j)
                break
            # stop at another add x27
            if (w2 & 0xFFC003E0) == 0x91400360 or (w2 & 0xFFC003E0) == 0x91000360:
                break

# verify: what about 0x220? That's from the known disassembly
for i in range(0, size - 4, 4):
    w = struct.unpack_from("<I", code, i)[0]
    if (w & LDR_MASK) == LDR_FIXED:
        imm12 = (w >> 10) & 0xFFF
        eff = imm12 * 8
        if eff == 0x220:
            print(f"  Found ldr x,[x27,#0x220] at 0x{text[0]+i:x}", flush=True)
            break

for t, label in targets.items():
    refs = sorted(set(results[t]))
    print(f"\n=== {label} (pp+0x{t:x}): {len(refs)} refs ===")
    for a in refs[:6]:
        # decode context
        idx = a - text[0]
        chunk = code[max(0,idx-20):idx+20]
        for insn in md.disasm(chunk, max(text[0], a-20)):
            if insn.address == a:
                # back up to find function start
                ctx = []
                for k in range(max(0, idx-40), min(size, idx+16), 4):
                    wc = struct.unpack_from("<I", code, k)[0]
                    ctx.append(f"0x{text[0]+k:x}: 0x{wc:08x}")
                break
        print(f"  ref@0x{a:x}")
        for line in ctx[-5:]:
            print(f"    {line}")
f.close()