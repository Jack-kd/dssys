#!/usr/bin/env python3
"""Decode strings at specific PP offsets using the Dart string deobfuscation."""
import binascii, re, sys

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate_hex(hex_str):
    raw = binascii.unhexlify(hex_str)
    if len(raw) < 2:
        return None
    seed = raw[0]
    key = raw[1]
    pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        rot = ror8(x, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

def pretty(b):
    if b is None:
        return "(too short)"
    try:
        t = b.decode("utf-8")
        return repr(t)
    except Exception:
        pass
    printable = all(0x20 <= c < 0x7f for c in b)
    if printable:
        return repr(b.decode("latin-1"))
    return "bytes(" + b.hex() + ")"

# Parse pp.txt: find "[pp+0x1ea50] String: "..." style lines
targets = {
    0x1ea50, 0x1ea58, 0x1ea60, 0x1ea78, 0x1ea90, 0x1eaa0, 0x1eab8,
    0x1eac8, 0x1eae0, 0x1eaf0, 0x1eb08, 0x1eb18, 0x1eb30, 0x1eb40,
    0x1eb58, 0x1eb68, 0x1eb80, 0x1eb90, 0x1eba8, 0x1ebb8, 0x1ebd0,
    0x176e8, 0x1ebe8,
    0x14e78, 0x14e80, 0x14e88, 0x14e90, 0x15718, 0x15720, 0x15728,
    0x16fd0, 0x16fd8, 0x16fe0, 0x16fe8,
}

# pp.txt may contain the deobfuscated string already, or the raw hex blob
# Look at both forms
found = {}
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]\s+String:\s+(.*)", line)
        if not m:
            continue
        off = int(m.group(1), 16)
        if off in targets:
            found[off] = m.group(2).strip()

for off in sorted(targets):
    val = found.get(off, "(no String entry)")
    # if it's a quoted literal string, print as-is
    if val.startswith('"'):
        print(f"pp+0x{off:x}: {val}")
    else:
        # it might be a hex blob that our deobfuscator handles
        m = re.search(r'"[0-9a-fA-F]+"', val)
        if m:
            h = m.group(0).strip('"')
            print(f"pp+0x{off:x}: {val}  ->  {pretty(deobfuscate_hex(h))}")
        else:
            print(f"pp+0x{off:x}: {val}")
