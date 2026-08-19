#!/usr/bin/env python3
"""
Reimplement the Dart string deobfuscation algorithm from 0x4ae480.
Based on analysis of the ARM64 disassembly.

Algorithm:
1. Hex decode the input string
2. First byte is the seed/key
3. For each subsequent byte:
   - key = (key * 0x83 + seed) & 0xff
   - decrypted = byte ^ key
   - rotated = ROR(decrypted, seed) -- rotate right by seed bits on 8-bit value
   - final = (rotated - seed) & 0xff
   
Where ROR on 8-bit means: (x >> n) | (x << (8-n)) & 0xff
"""

import binascii

def ror8(x, n):
    """Rotate right 8-bit value by n positions"""
    n = n & 7
    return ((x >> n) | (x << (8 - n))) & 0xff

def deobfuscate(hex_str):
    """Decode a hex-encoded obfuscated string"""
    raw = binascii.unhexlify(hex_str)
    if len(raw) < 1:
        return ""
    seed = raw[0]
    key = 0
    result = []
    for byte in raw:
        key = (key * 0x83 + seed) & 0xff
        decrypted = byte ^ key
        rotated = ror8(decrypted, seed)
        final_val = (rotated - seed) & 0xff
        result.append(final_val)
    # first byte is the seed, skip it
    return bytes(result[1:])

# Test with known strings
tests = [
    "50bbb867",            # 4 bytes hex -> 2 bytes decoded
    "7bef324abddca8fae727e0a0ccf7",  # long hex string
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
    "a65d3a983f1cfe5f",
    "e1ba9b04",
    "a2202ef0864cf66016f8fe1066539a58ce",
    "7d539adebbe7b8b3",
    "43851b1731ec949f1f5a2410c9334b6f009c6d4787aaede0412523cf907ce43f9fa3942018cd739628043cff070a94b01943",
    "dc5d3f8d9ef144d35764aa89cdcb",
    "a7ffaf9a64d77a977b00502e1550afafad9182bf4d0d57b1df",
    "5fedc2b0",
    "bf07cdafe99a7e",
    "f955bb206a0ccb90f9ca36ec7d6a",
    "5c8662fd32cb159ad3aa951df26a026a522af29de39aa27a32bda22a951b95eb521af2",
]

print("=== Deobfuscated strings ===")
for h in tests:
    try:
        result = deobfuscate(h)
        # Try to decode as UTF-8
        try:
            text = result.decode("utf-8")
            print(f"{h[:40]:<44} -> {text!r}")
        except:
            # Check if all printable ASCII
            printable = sum(1 for b in result if 32 <= b < 127)
            if printable == len(result):
                print(f"{h[:40]:<44} -> {result!r} (ASCII)")
            else:
                print(f"{h[:40]:<44} -> {result.hex()!r} (bytes)")
    except Exception as e:
        print(f"{h[:40]:<44} -> ERROR: {e}")