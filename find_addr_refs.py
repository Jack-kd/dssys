#!/usr/bin/env python3
"""Search all loadable segments for raw 64-bit LE references to target addrs."""
import struct
from elftools.elf.elffile import ELFFile

path = "/workspace/extract/libapp.so"
f = open(path, "rb")
elf = ELFFile(f)

targets = [0x48e61c, 0x48e5d0]  # getter + closure
tbytes = {t: struct.pack("<Q", t) for t in targets}
tbytes32 = {t: struct.pack("<I", t) for t in targets}

for seg in elf.iter_segments():
    if seg["p_type"] != "PT_LOAD":
        continue
    data = seg.data()
    print(f"\nsegment vaddr=0x{seg['p_vaddr']:x} off=0x{seg['p_offset']:x} size=0x{len(data):x}")
    for t in targets:
        idx = 0
        cnt = 0
        while True:
            i = data.find(tbytes[t], idx)
            if i == -1:
                break
            print(f"  ref to 0x{t:x} (64bit) at vaddr 0x{seg['p_vaddr']+i:x}")
            cnt += 1
            idx = i + 1
        idx = 0
        while True:
            i = data.find(tbytes32[t], idx)
            if i == -1:
                break
            print(f"  ref to 0x{t:x} (32bit) at vaddr 0x{seg['p_vaddr']+i:x}")
            cnt += 1
            idx = i + 1
        if cnt == 0:
            print(f"  no raw ref to 0x{t:x}")
f.close()
