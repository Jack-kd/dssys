#!/usr/bin/env python3
"""Extract printable ASCII strings from decrypted_strings.txt and pp.txt, filter for API-related."""
import re

def extract_strings(path):
    with open(path, "rb") as f:
        data = f.read()
    # printable runs >= 4
    out = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        out.append(m.group(0).decode("ascii"))
    return out

keywords = ["http", "api", ".php", "/v", "parse", "secret", "sign", "csrf", "token",
            "key", "url", "config", "play", "video", "search", "vod", "detail",
            "recommend", "home", "category", "rank", "list", "url", "host", "domain"]

seen = set()
rows = []
for path in ["/workspace/decrypted_strings.txt"]:
    for s in extract_strings(path):
        low = s.lower()
        if any(k in low for k in keywords):
            if s not in seen:
                seen.add(s)
                rows.append(s)

# also scan pp.txt raw pool strings (some plaintext strings may exist)
for s in extract_strings("/workspace/blutter_out/pp.txt"):
    low = s.lower()
    if ("http" in low or "api" in low or ".php" in low or "parse" in low
            or "sign" in low or "secret" in low or "csrf" in low) and s not in seen:
        seen.add(s)
        rows.append(s)

rows.sort()
for s in rows:
    print(repr(s))
print(f"\nTOTAL: {len(rows)}")
