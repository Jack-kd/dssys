#!/usr/bin/env python3
"""Apply the zXa consumer transform (from disasm 0x48e440-0x48e4ec) to the
915-byte _Ajg payload.

Transform per index i:
  i even            -> -5
  i odd,  i%3==0    -> -0xb (11)
  i odd,  i%7==0    -> -3
  i odd,  i%5==0    -> -9
  else              -> 0
"""
import binascii, re

def ror8(x, n):
    n &= 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deob_hex(s):
    raw = binascii.unhexlify(s)
    seed = raw[0]; key = raw[1]; pad = seed & 7
    out = bytearray()
    for b in raw[2:]:
        key = (key * 0x83 + seed) & 0xff
        x = b ^ key
        out.append((ror8(x, pad) - seed) & 0xff)
    return bytes(out)

strings = {}
with open('/workspace/blutter_out/pp.txt', 'r', encoding='utf-8', errors='replace') as f:
    for line in f:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1), 16)] = m.group(2)

stage1 = deob_hex(strings[0x160d8])
nums = [int(x.strip()) for x in stage1.decode('ascii').split(',') if x.strip()]
payload = bytes(nums)
print(f"payload: {len(payload)} bytes, values {min(payload)}..{max(payload)}")

def offset(i):
    if i % 2 == 0:
        return 5
    if i % 3 == 0:
        return 0xb
    if i % 7 == 0:
        return 3
    if i % 5 == 0:
        return 9
    return 0

out = bytearray()
for i, v in enumerate(payload):
    out.append((v - offset(i)) & 0xff)

print("== result bytes ==")
print("hex head:", out.hex()[:200])
print("ascii:", ''.join(chr(c) if 32 <= c < 127 else '.' for c in out)[:300])
print("printable ratio:", sum(1 for c in out if 32 <= c < 127 or c in (10, 13)) / len(out))

# Show readable stretches
import itertools
print("\n== readable stretches (>4) ==")
cur = []
for i, c in enumerate(out):
    if 32 <= c < 127:
        cur.append(chr(c))
    else:
        if len(cur) > 4:
            print(f"  0x{i - len(cur):04x}: {''.join(cur)}")
        cur = []
if len(cur) > 4:
    print(f"  end: {''.join(cur)}")
