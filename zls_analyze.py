#!/usr/bin/env python3
"""Check zlsioh.dat with same detection-header pattern."""
import re
data = open("/workspace/apk_decode/assets/zlsioh.dat", "rb").read()
print(f"size: {len(data)}")
pat = b"\x00\x01\x01\x00"
positions = [m.start() for m in re.finditer(re.escape(pat), data)]
print(f"header positions: {len(positions)}")

# Same single-byte XOR pattern as na.czl
def decrypt(data):
    out = []
    for idx, p in enumerate(positions):
        end = positions[idx+1] if idx+1 < len(positions) else len(data)
        rec = data[p:end]
        payload = rec[6:]
        if len(payload) >= 1:
            key = payload[0]
            dec = bytes(x ^ key for x in payload[1:])
            try:
                s = dec.decode('utf-8')
            except Exception:
                s = repr(dec)
            out.append((idx, key, s))
    return out

out = decrypt(data)
print(f"decrypted {len(out)} records")
for idx, k, s in out[:10]:
    print(f"[{idx:02d}] key=0x{k:02x}: {s[:100]}")

# check for any domain/URL in any record
print("\n=== records containing 'http' / 'com' / 'cn' ===")
for idx, k, s in out:
    if 'http' in s.lower() or '.com' in s or '.cn' in s or 'top' in s or 'api' in s:
        print(f"[{idx:02d}] {repr(s)}")
