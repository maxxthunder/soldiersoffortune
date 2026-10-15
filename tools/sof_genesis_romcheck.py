"""Needs: pip install unicorn. Run the Genesis ROM's own password encoder/decoder under unicorn and compare with tools/sof_password.py."""
import os, random, struct, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import sof_password as P
from unicorn import Uc, UC_ARCH_M68K, UC_MODE_BIG_ENDIAN
from unicorn.m68k_const import UC_CPU_M68K_M68000, UC_M68K_REG_A5, UC_M68K_REG_A7, UC_M68K_REG_D0

rom = open(os.path.join(HERE, "..", "Soldiers of Fortune (USA).md"), "rb").read()
TILES = rom[0x8420:0x8440]
A5, RET = 0xFF0000, 0xFFF000

def machine():
    mu = Uc(UC_ARCH_M68K, UC_MODE_BIG_ENDIAN, cpu=UC_CPU_M68K_M68000)
    mu.mem_map(0, 0x200000); mu.mem_write(0, rom)
    mu.mem_map(0xFF0000, 0x10000)
    mu.mem_write(A5 + 0x46E, struct.pack(">I", 0xFF9000))  # equipment cost table -> zeros
    mu.reg_write(UC_M68K_REG_A5, A5); mu.reg_write(UC_M68K_REG_A7, 0xFFFE00)
    return mu
w16 = lambda mu, o, v: mu.mem_write(A5 + o, struct.pack(">H", v))
w32 = lambda mu, o, v: mu.mem_write(A5 + o, struct.pack(">I", v))
r16 = lambda mu, o: struct.unpack(">H", mu.mem_read(A5 + o, 2))[0]
r32 = lambda mu, o: struct.unpack(">I", mu.mem_read(A5 + o, 4))[0]

def rom_encode(f):
    mu = machine()
    w16(mu, 0x946, f["p1_char"] + 1); w16(mu, 0x948, f["p2_char"] + 1); w16(mu, 0x960, f["level"])
    w16(mu, 0x415C, 1 if f["two_players"] else 6); w16(mu, 0x4C, f["p1_lives"]); w16(mu, 0x4E, f["p2_lives"])
    w16(mu, 0xAF8, f["p1_stat"]); w16(mu, 0xB20, f["p2_stat"]); w32(mu, 0xAE4, f["p1_money"]); w32(mu, 0xB0C, f["p2_money"])
    mu.emu_start(0x834A, 0x838A)
    return "".join(P.GEN_ALPHABET[TILES.index(t)] for t in mu.mem_read(A5 + 0x3B0, 12))

def rom_decode(pw, two_players):
    mu = machine()
    mu.mem_write(A5 + 0x3B0, bytes(TILES[P.GEN_ALPHABET.index(c)] for c in pw))
    w16(mu, 0x415C, 1 if two_players else 6)
    sp = 0xFFFE00 - 4; mu.mem_write(sp, struct.pack(">I", RET)); mu.reg_write(UC_M68K_REG_A7, sp)
    mu.emu_start(0x7548, RET)
    d0 = mu.reg_read(UC_M68K_REG_D0) & 0xFFFFFFFF
    if d0: return d0
    return {"two_players": two_players, "level": r16(mu, 0x960), "p1_char": r16(mu, 0x946) - 1, "p2_char": r16(mu, 0x948) - 1,
            "p1_lives": r16(mu, 0x4C), "p2_lives": r16(mu, 0x4E), "p1_stat": r16(mu, 0xAF8), "p2_stat": r16(mu, 0xB20),
            "p1_money": r32(mu, 0xAE4), "p2_money": r32(mu, 0xB0C)}

random.seed(7); bad = 0; samples = []
for k in range(400):
    a, b = random.choice(P.PAIRS)
    f = dict(two_players=random.randint(0, 1), level=random.choice([4, 8, 12]), p1_char=a, p2_char=b,
             p1_lives=random.randint(0, 31), p2_lives=random.randint(0, 31), p1_stat=random.randint(0, 10),
             p2_stat=random.randint(0, 10), p1_money=random.randrange(0, 65536, 2), p2_money=random.randrange(0, 65536, 2))
    pw = rom_encode(f)
    if pw != P.gen_encode(f): bad += 1; print("encode differs", f, pw, P.gen_encode(f))
    d = rom_decode(pw, f["two_players"])
    if d != f: bad += 1; print("rom decode differs", f, d)
    wrong = rom_decode(pw, 1 - f["two_players"])
    if wrong != 0xFFFFFFFE: bad += 1; print("mode mismatch not rejected", wrong)
    if k < 6: samples.append((pw, f))
# corrupted passwords: ROM and Python must agree on accept/reject
for _ in range(2000):
    pw = "".join(random.choice(P.GEN_ALPHABET) for _ in range(12))
    try: py = P.gen_decode(pw)
    except ValueError: py = None
    rd = rom_decode(pw, py["two_players"] if py else 0)
    if (py is None) != (not isinstance(rd, dict)) or (py and rd != py):
        if py is None and isinstance(rd, dict): pass
        bad += 1; print("disagree", pw, py, rd)
print("mismatches:", bad)
for pw, f in samples: print(pw, f)
