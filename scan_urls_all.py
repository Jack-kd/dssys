#!/usr/bin/env python3
"""Scan decrypted pp strings for all URLs / domains / config endpoints."""
import binascii, re

def ror8(x, n):
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate_hex(hex_str):
    raw = binascii.unhexlify(hex_str)
    if len(raw) < 2:
        return None
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for byte in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = byte ^ key
        rot = ror8(x, pad)
        out.append((rot - seed) & 0xff)
    return bytes(out)

urls = []
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if not m:
            continue
        off = int(m.group(1),16)
        s = m.group(2)
        if len(s) < 6 or len(s) % 2 != 0 or not re.fullmatch(r'[0-9a-fA-F]+', s):
            continue
        try:
            d = deobfuscate_hex(s)
            t = d.decode('utf-8', errors='replace')
        except Exception:
            continue
        # URL / domain / api / config patterns
        if re.search(r'https?://|\.(com|cn|net|top|org|xyz|cc|tv|site|fun|club|vip|app|io|me|info)(/|$)|^/[a-z_]+\.php|ndsx|secret|parse_|app_config', t, re.I):
            urls.append((off, t))

print(f"found {len(urls)} config/URL-like strings")
for off, t in sorted(urls):
    print(f"pp+0x{off:05x}: {t!r}")
