#!/usr/bin/env python3
import os, re

offsets = [
    '17d80', '14e88', 'ec28', 'ec40', '17d78', 'ecb8', '1e608', '1ebb8',
    '16fe8', '118e8', '29778', '1eb18', '1eac8', '20fe0', '24a88', '16140',
    '118a0', '118a8', '118d0', '16138', '16fd8', '16bf0', '2ac58', '32ce8',
    '1ecd8', '1ecd0', 'eea0', '123d0', '2e450', '1b148', '2a418', '195f0',
    'f1f8', 'ed18', '12478',
]

# match pp+0x<off> or PP, #0x<off> style references
patterns = [re.compile(r'pp\+0x' + o, re.I) for o in offsets]

found = {}
asm_dir = '/workspace/blutter_out/asm'
total = 0
for root, dirs, files in os.walk(asm_dir):
    for fname in files:
        if not fname.endswith('.dart'):
            continue
        path = os.path.join(root, fname)
        try:
            with open(path, 'r', encoding='utf-8', errors='replace') as f:
                for num, line in enumerate(f, 1):
                    for p in patterns:
                        if p.search(line):
                            found.setdefault(path, []).append((num, line.strip()))
                            total += 1
                            break
        except Exception:
            pass

print(f"Total {total} in {len(found)} files\n")
for path, lines in sorted(found.items()):
    print(f"=== {os.path.basename(path)} ===")
    for num, line in lines[:10]:
        print(f"  {num:5d}: {line[:130]}")
    if len(lines) > 10:
        print(f"  ... +{len(lines)-10}")
    print()
