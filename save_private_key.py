#!/usr/bin/env python3
"""Save the recovered zXa RSA private key to a PEM file and inspect it."""
import binascii, re, subprocess, tempfile, os

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

out = bytes((v - offset(i)) & 0xff for i, v in enumerate(payload))
pem = out.decode('ascii')

with open('/workspace/recovered_private_key.pem', 'w') as f:
    f.write(pem)
print("Wrote /workspace/recovered_private_key.pem (%d chars)" % len(pem))

# parse with openssl
with tempfile.NamedTemporaryFile('w', suffix='.pem', delete=False) as tf:
    tf.write(pem)
    tpath = tf.name
try:
    r = subprocess.run(['openssl', 'pkey', '-in', tpath, '-text', '-noout'],
                       capture_output=True, text=True)
    print("\n=== openssl pkey -text ===")
    print(r.stdout if r.returncode == 0 else r.stderr)
    # print public info
    r2 = subprocess.run(['openssl', 'rsa', '-in', tpath, '-pubout'],
                        capture_output=True, text=True)
    print("\n=== openssl rsa -pubout ===")
    print(r2.stdout if r2.returncode == 0 else r2.stderr)
finally:
    os.unlink(tpath)
