#!/usr/bin/env python3
"""Find callers of _decryptRsa (0x7a41ac), config builder (0x7976b4), parse_secret (0x504950)."""
import re
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

CHUNK = 1 << 20
OVERLAP = 16
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

targets = {
    0x7a41ac: "_decryptRsa",
    0x7976b4: "secret_parse_api_url builder",
    0x504950: "parse_secret",
    0x7a3838: "app_config",
    0x40465c: "rsa decrypt core",
    0x48e61c: "_Ajg getter",
    0x3abd54: "xdd base url getter",
    0x44d084: "url decode (parse)",
    0x44d6a8: "string builder helper",
    0x797688: "?? called from _Ajg getter area",
}

# pattern: bl #0x... -> address
callers = {t: [] for t in targets}
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
        a = insns[i]
        if a.mnemonic == "bl":
            m = re.match(r"#0x([0-9a-f]+)", a.op_str)
            if m:
                tgt = int(m.group(1), 16)
                if tgt in targets:
                    callers[tgt].append(a.address)
    base += CHUNK

for tgt in sorted(targets):
    print(f"{targets[tgt]} 0x{tgt:x}: {len(callers[tgt])} callers -> {[hex(c) for c in sorted(set(callers[tgt]))[:20]]}")
f.close()
