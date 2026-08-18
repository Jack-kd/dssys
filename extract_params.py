#!/usr/bin/env python3
"""Extract all likely request param / header key strings from decrypted pool."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{3,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

all_s = extract_strings("/workspace/decrypted_strings.txt")
seen = set()
for s in all_s:
    low = s.lower()
    if re.fullmatch(r"[a-zA-Z_][a-zA-Z0-9_\-]*", s) and (
        "sign" in low or "token" in low or "secret" in low or "key" in low
        or "time" in low or "ts" == low or "nonce" in low or "rand" in low
        or "channel" in low or "version" in low or "device" in low
        or "app" in low or "uuid" in low or "md5" in low or "csrf" in low
        or "platform" in low or "client" in low or "imei" in low or "android" in low
    ):
        if s not in seen:
            seen.add(s)
            print(repr(s))
