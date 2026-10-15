"""Round-trip every 68000 opcode word (with random extension words) through
disasm68k.decode -> fmt -> reasm68k.encode and check the bytes come back."""
import os, random, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from disasm68k import decode, fmt
from reasm68k import encode

random.seed(1)
ok = bad = 0
for w in range(65536):
    buf = bytes([w >> 8, w & 0xFF] + [random.randrange(256) for _ in range(8)])
    pc = 0x10000
    d = decode(buf, pc, org=pc)
    if not d:
        continue
    m, ops, n = d
    labels = {o[1] for o in ops if o[0] in ("rel", "absl", "pcd", "pcx") and o[1] < 1 << 24 and random.random() < .5}
    text = ",".join(fmt(o, labels) for o in ops)
    try:
        good = encode(m, text, pc) == buf[:n]
    except ValueError:
        good = False
    ok += good
    if not good:
        bad += 1
        print("FAIL", f"{w:04X}", m, text)
print(f"{ok} opcode words round-trip, {bad} fail")
sys.exit(1 if bad else 0)
