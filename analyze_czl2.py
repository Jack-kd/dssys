#!/usr/bin/env python3
"""Try specific XOR keys derived from known-plaintext assumptions on na.czl."""
data = open("/workspace/apk_decode/assets/na.czl", "rb").read()

# header is 6 bytes: 00 01 01 00 11 00
body = data[6:]

# try single-byte keys derived from first body byte 0xb8
for pt in (b"{", b'"', b"<", b"[", b"h"):  # JSON obj, JSON str, XML, array, 'h' for http
    k = body[0] ^ pt[0]
    dec = bytes(x ^ k for x in body)
    ok = sum(1 for x in dec if 32 <= x < 127 or x in (9,10,13))
    print(f"key=0x{k:02x} (from {pt!r}): printable={ok}/{len(dec)}")
    print("   ", dec[:160])

# try multi-byte keys common in CN apps
print("\n=== multi-byte key attempts (rolling XOR) ===")
keys = {
    "minghuaqu": b"minghuaqu",
    "MinghuaQu": b"MinghuaQu",
    "zxtv": b"zxtv",
    "appad": b"appad",
    "mobile.appad.top": b"mobile.appad.top",
    "0123456789ABCDEF": b"0123456789ABCDEF",
}
for name, key in keys.items():
    dec = bytes(data[i] ^ key[i % len(key)] for i in range(len(data)))
    ok = sum(1 for x in dec if 32 <= x < 127 or x in (9,10,13))
    print(f"key={name}: printable={ok}/{len(dec)} -> {dec[:120]!r}")
