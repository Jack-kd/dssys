#!/usr/bin/env python3
"""Find pp offsets of specific deobfuscated strings (parse_secret, secret_parse_api_url, etc)."""
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

targets = ['parse_secret', 'secret_parse_api_url', 'parse_api', 'extra_parse_api',
           '_decryptRsa', 'magic not found', 'secret part parse failed',
           'app_config', 'appKey', 'xddappsecretkey', 'sign_md5', 'csrf',
           '/ndsx.php/v7', 'https://xdd']

strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

found = {t: [] for t in targets}
for off, s in sorted(strings.items()):
    if len(s) < 6 or len(s) % 2 != 0:
        continue
    if not re.fullmatch(r'[0-9a-fA-F]+', s):
        continue
    try:
        d = deobfuscate_hex(s)
    except Exception:
        continue
    try:
        t = d.decode('utf-8')
    except Exception:
        continue
    for tg in targets:
        if t == tg or (tg in t and len(t) < 80):
            found[tg].append((off, t))

for tg in targets:
    if found[tg]:
        for off, t in found[tg]:
            print(f"{tg!r}: pp+0x{off:05x} = {t!r}")
    else:
        print(f"{tg!r}: NOT FOUND")
