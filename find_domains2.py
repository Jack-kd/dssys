#!/usr/bin/env python3
"""Decode ALL hex String entries in pp.txt and filter for URL/domain/header-like content."""
import re, binascii

def ror8(x, n):
    n &= 7; return ((x >> n) | (x << (8-n))) & 0xff
def dec_hex(h):
    if len(h) % 2 or len(h) < 4:
        return None
    raw = binascii.unhexlify(h)
    seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

results = []
seen = set()
with open("/workspace/blutter_out/pp.txt", "r", encoding="utf-8", errors="replace") as f:
    for line in f:
        m = re.match(r"\[pp\+0x([0-9a-f]+)\]", line)
        if not m:
            continue
        off = int(m.group(1), 16)
        hm = re.search(r'String:\s+.*?"([0-9a-fA-F]+)"', line)
        if not hm:
            continue
        h = hm.group(1).lower()
        if h in seen:
            continue
        seen.add(h)
        b = dec_hex(h)
        if b is None:
            continue
        try:
            t = b.decode("utf-8")
        except Exception:
            continue
        if not all(c >= 0x20 or c in (9,10,13) for c in b):
            continue
        results.append((off, h, t))

# filter interesting: url/domain/path/header/key
pats = [r'https?', r'://', r'\.(com|cn|net|top|org|io|xyz|app|vip|cc|me|co|shop|club|site|online|store|live|tv|video)',
        r'GET ', r'POST ', r'User-Agent', r'Content-', r'Authorization', r'Bearer', r'X-', r'Host', r'sign', r'secret', r'key', r'token', r'appKey', r'package']
for off, h, t in results:
    tl = t.lower()
    if any(re.search(p, tl) for p in pats):
        print(f"pp+0x{off:x}: {t!r}")