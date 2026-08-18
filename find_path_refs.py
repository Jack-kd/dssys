#!/usr/bin/env python3
"""Find functions referencing key API path strings (same fn => grouped together)."""
from elftools.elf.elffile import ELFFile
import struct, re, binascii

path = "/workspace/extract/libapp.so"
f = open(path, "rb"); elf = ELFFile(f)
segs = [(s["p_vaddr"], s["p_vaddr"]+s["p_filesz"], s["p_offset"]) for s in elf.iter_segments() if s["p_type"]=="PT_LOAD"]
def v2o(va):
    for v0,v1,o0 in segs:
        if v0<=va<v1: return o0+(va-v0)
    return None
for sec in elf.iter_sections():
    if sec.name == ".text":
        text = sec.data(); text_va = sec["sh_addr"]; break

# load pp strings
strings = {}
with open('/workspace/blutter_out/pp.txt','r',encoding='utf-8',errors='replace') as fh:
    for line in fh:
        m = re.match(r'\[pp\+0x([0-9a-f]+)\]\s+String:\s+.*?\"(.*?)\"', line)
        if m:
            strings[int(m.group(1),16)] = m.group(2)

def ror8(x,n):
    n&=7; return ((x>>n)|(x<<(8-n)))&0xff
def dec_hex(h):
    raw=binascii.unhexlify(h); seed=raw[0]; key=raw[1]; pad=seed&7; out=bytearray()
    for b in raw[2:]:
        key=(key*0x83+seed)&0xff; x=b^key; out.append((ror8(x,pad)-seed)&0xff)
    return bytes(out)

# map: decoded string -> pp offset
dec_map = {}
for off,s in strings.items():
    if len(s)>=6 and len(s)%2==0 and re.fullmatch(r'[0-9a-fA-F]+',s):
        try:
            d=dec_hex(s); dec_map[d]=off
        except Exception: pass

targets = [b'/ndsx.php/v7', b'/search', b'/video/:videoId', b'/recommendVideoList/:recommendId',
           b'/short/:videoId', b'/live/:videoId', b'/casting/:videoId', b'/historyList',
           b'/collectionList', b'/noticeList', b'/noticeDetail/:id', b'/avatarList',
           b'/downloadSection/:videoId/:videoName', b'/video_download/']

# For each target, find its pp offset and then find refs (add xN, x27, #page, lsl#12 ; ldr xN,[xN,#imm])
def find_refs(off):
    page = off >> 12; imm = off & 0xFFF
    hits = []
    for o in range(0, len(text)-8, 4):
        insn = struct.unpack_from('<I', text, o)[0]
        if (insn & 0xFFC00000)==0x91400000 and ((insn>>5)&0x1F)==27 and ((insn>>10)&0xFFF)==page:
            va = text_va + o
            nxt = struct.unpack_from('<I', text, o+4)[0]
            if (nxt & 0xFFC00000)==0xF9400000 and ((nxt>>5)&0x1F)==(nxt&0x1F):
                nimm=(nxt>>10)&0xFFF
                if nimm==imm:
                    hits.append(va)
    return hits

# group refs by function (approx by clustering within 0x40 and using caller fn)
from collections import defaultdict
fn_of = {}
for t in targets:
    off = dec_map.get(t)
    if off is None:
        print(f"{t.decode()}: no pp offset"); continue
    refs = find_refs(off)
    print(f"{t.decode()}: pp+0x{off:05x} refs={[hex(r) for r in refs]}")
