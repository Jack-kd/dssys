#!/usr/bin/env python3
"""Scan libapp.so .text for references to a set of PP string offsets,
print the referencing addresses grouped per offset (used to locate the
parse_secret / decrypt / config functions)."""
import re
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

targets = {
    0x1eac8: 'parse_secret',
    0x1eaf0: 'parse_api',
    0x1eb18: 'extra_parse_api',
    0x20fe0: 'secret_parse_api_url',
    0x15cc0: 'app_config',
    0x16138: 'appKey',
    0x12458: 'decrypt error: magic not found',
    0x12478: 'decrypt error: secret part parse failed',
    0x15e18: '_decryptRsa error',
    0x14e88: '/ndsx.php/v7',
    0x17d78: 'https://xdd/video?id=',
    0x17d80: 'https://xdd',
    0x1e608: 'sign_md5',
    0x118e8: 'csrf',
    0x160d8: '_Ajg blob',
}

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)

# find .text
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = (sec["sh_addr"], sec["sh_addr"] + sec["sh_size"])
        f.seek(sec["sh_offset"])
        code = f.read(sec["sh_size"])
        break

CHUNK = 1 << 20
OVERLAP = 32
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
addre = re.compile(r'^x(\d+), x27, #(0x[0-9a-fA-F]+), lsl #12$')
ldrre = re.compile(r'^x(\d+), \[x\1, #(0x[0-9a-fA-F]+)\]$')

refs = {t: [] for t in targets}
base = 0
va0 = text[0]
while base < len(code):
    chunk = code[base:base + CHUNK + OVERLAP]
    try:
        insns = list(md.disasm(chunk, va0 + base))
    except Exception:
        base += CHUNK
        continue
    for i in range(len(insns) - 1):
        a = insns[i]; b = insns[i+1]
        m = addre.match(a.op_str.strip())
        if not m:
            continue
        hi = int(m.group(2), 16); n = int(m.group(1))
        m2 = ldrre.match(b.op_str.strip())
        if not m2:
            continue
        lo = int(m2.group(2), 16)
        off = (hi << 12) | (lo & 0xfff)
        if off in refs:
            refs[off].append(a.address)
    base += CHUNK

for off in sorted(refs):
    lst = sorted(set(refs[off]))
    print(f"pp+0x{off:05x} {targets[off]!r}: {len(lst)} refs -> {[hex(x) for x in lst[:12]]}")
