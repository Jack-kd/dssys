#!/usr/bin/env python3
"""Try to decrypt hex strings found in Dart snapshot object pool."""
from Crypto.Cipher import AES
import binascii

key = b"0123456789ABCDEF"
key2 = b"0123456789abcdef"

candidates = [
    "365ce2f11826bf6d2a598111380b12c2",
    "1015b78404a1800fbe5a536464c1",
    "9a79b1e535aec2adb539dd6575e68241f9cd3d0da595",
    "4f3795f48de5d2",
    "5c8662fd32cb159ad3aa951df26a026a522af29de39aa27a32bda22a951b95eb521af2",
    "f5cf8fd0aaca01df02",
    "4d65841767e5120eef5a7b297758823e",
    "8343e320dfd43b0a0ff43bf0",
    "894f05822782e5",
    "2a6d9b270f77937b73f3",
    "6f75a1b492acecee82ab70db005d873d8dfb",
    "6f1d282b436e1100",
    "47383ac0de84",
    "1c016881ef99",
    "84148df9ad79",
    "0e8f59",
]

def try_aes(data, k, mode):
    results = []
    for kk in (k,):
        for pad in (None, "pkcs7", "zero"):
            try:
                cipher = AES.new(kk, mode)
                if pad == "pkcs7":
                    from Crypto.Util.Padding import unpad
                    pt = unpad(cipher.decrypt(data), 16)
                elif pad == "zero":
                    pt = cipher.decrypt(data).rstrip(b"\x00")
                else:
                    pt = cipher.decrypt(data)
                results.append((mode, pad, kk, pt))
            except Exception:
                pass
    return results

print("=== AES ECB with key '0123456789ABCDEF' ===")
for h in candidates:
    b = binascii.unhexlify(h)
    if len(b) % 16 != 0:
        print(f"{h[:32]}... ({len(b)} bytes) not a multiple of 16, skipping AES")
        continue
    for mode, pad, kk, pt in try_aes(b, key, AES.MODE_ECB):
        print(f"{h[:24]}... -> {pt!r}")

print()
print("=== AES ECB with key '0123456789abcdef' ===")
for h in candidates:
    b = binascii.unhexlify(h)
    if len(b) % 16 != 0:
        continue
    for mode, pad, kk, pt in try_aes(b, key2, AES.MODE_ECB):
        print(f"{h[:24]}... -> {pt!r}")

# Also try treating the long strings as raw UTF-16/UTF-8 of hex pairs
print()
print("=== hex -> bytes as ascii printable check ===")
for h in candidates:
    b = binascii.unhexlify(h)
    printable = sum(1 for x in b if 32 <= x < 127)
    print(f"{h[:40]:<44} bytes={len(b):>3} printable_ratio={printable}/{len(b)}")
