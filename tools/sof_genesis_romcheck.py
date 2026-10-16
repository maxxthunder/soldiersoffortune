"""Needs: pip install unicorn. Run the Genesis/Mega Drive ROM's own password encoder/decoder under unicorn
and compare with tools/sof_password.py.

Usage: python tools/sof_genesis_romcheck.py [us|eu]   (default: every version whose ROM is present)
The European "Chaos Engine, The (Europe).md" has the same routines $21C bytes later and some RAM
variables 2-4 bytes further on; VERSIONS holds both sets of addresses."""
import os, random, struct, sys
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import sof_password as P
from unicorn import Uc, UC_ARCH_M68K, UC_MODE_BIG_ENDIAN
from unicorn.m68k_const import UC_CPU_M68K_M68000, UC_M68K_REG_A5, UC_M68K_REG_A7, UC_M68K_REG_D0

# RAM offsets are from A5 = $FF0000
VERSIONS = {
    "us": dict(file="Soldiers of Fortune (USA).md", tiles=0x8420, encode=(0x834A, 0x838A), decode=0x7548,
               p1_char=0x946, p2_char=0x948, level=0x960, p2_control=0x415C, p1_lives=0x4C, p2_lives=0x4E,
               p1_stat=0xAF8, p2_stat=0xB20, p1_money=0xAE4, p2_money=0xB0C, text=0x3B0, costs=0x46E),
    "eu": dict(file="Chaos Engine, The (Europe).md", tiles=0x86FA, encode=(0x861E, 0x865E), decode=0x7764,
               p1_char=0x948, p2_char=0x94A, level=0x962, p2_control=0x4160, p1_lives=0x4C, p2_lives=0x4E,
               p1_stat=0xAFC, p2_stat=0xB24, p1_money=0xAE8, p2_money=0xB10, text=0x3B0, costs=0x46E),
}
A5, RET = 0xFF0000, 0xFFF000
w16 = lambda mu, o, v: mu.mem_write(A5 + o, struct.pack(">H", v))
w32 = lambda mu, o, v: mu.mem_write(A5 + o, struct.pack(">I", v))
r16 = lambda mu, o: struct.unpack(">H", mu.mem_read(A5 + o, 2))[0]
r32 = lambda mu, o: struct.unpack(">I", mu.mem_read(A5 + o, 4))[0]


def check(v):
    rom = open(os.path.join(HERE, "..", v["file"]), "rb").read()
    tiles = rom[v["tiles"]:v["tiles"] + 32]

    def machine():
        mu = Uc(UC_ARCH_M68K, UC_MODE_BIG_ENDIAN, cpu=UC_CPU_M68K_M68000)
        mu.mem_map(0, 0x400000); mu.mem_write(0, rom)
        mu.mem_map(0xFF0000, 0x10000)
        mu.mem_write(A5 + v["costs"], struct.pack(">I", 0xFF9000))  # equipment cost table -> zeros
        mu.reg_write(UC_M68K_REG_A5, A5); mu.reg_write(UC_M68K_REG_A7, 0xFFFE00)
        return mu

    def rom_encode(f):
        mu = machine()
        w16(mu, v["p1_char"], f["p1_char"] + 1); w16(mu, v["p2_char"], f["p2_char"] + 1); w16(mu, v["level"], f["level"])
        w16(mu, v["p2_control"], 1 if f["two_players"] else 6); w16(mu, v["p1_lives"], f["p1_lives"]); w16(mu, v["p2_lives"], f["p2_lives"])
        w16(mu, v["p1_stat"], f["p1_stat"]); w16(mu, v["p2_stat"], f["p2_stat"]); w32(mu, v["p1_money"], f["p1_money"]); w32(mu, v["p2_money"], f["p2_money"])
        mu.emu_start(*v["encode"])
        return "".join(P.GEN_ALPHABET[tiles.index(t)] for t in mu.mem_read(A5 + v["text"], 12))

    def rom_decode(pw, two_players):
        mu = machine()
        mu.mem_write(A5 + v["text"], bytes(tiles[P.GEN_ALPHABET.index(c)] for c in pw))
        w16(mu, v["p2_control"], 1 if two_players else 6)
        sp = 0xFFFE00 - 4; mu.mem_write(sp, struct.pack(">I", RET)); mu.reg_write(UC_M68K_REG_A7, sp)
        mu.emu_start(v["decode"], RET)
        d0 = mu.reg_read(UC_M68K_REG_D0) & 0xFFFFFFFF
        if d0: return d0
        return {"two_players": two_players, "level": r16(mu, v["level"]), "p1_char": r16(mu, v["p1_char"]) - 1,
                "p2_char": r16(mu, v["p2_char"]) - 1, "p1_lives": r16(mu, v["p1_lives"]), "p2_lives": r16(mu, v["p2_lives"]),
                "p1_stat": r16(mu, v["p1_stat"]), "p2_stat": r16(mu, v["p2_stat"]),
                "p1_money": r32(mu, v["p1_money"]), "p2_money": r32(mu, v["p2_money"])}

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
    # random strings: ROM and Python must agree on accept/reject and on the decoded fields
    for _ in range(2000):
        pw = "".join(random.choice(P.GEN_ALPHABET) for _ in range(12))
        try: py = P.gen_decode(pw)
        except ValueError: py = None
        rd = rom_decode(pw, py["two_players"] if py else 0)
        if (py is None) != (not isinstance(rd, dict)) or (py and rd != py):
            bad += 1; print("disagree", pw, py, rd)
    print(f"{v['file']}: mismatches: {bad}")
    for pw, f in samples: print(" ", pw, f)
    return bad


present = [k for k in (sys.argv[1:] or VERSIONS) if os.path.exists(os.path.join(HERE, "..", VERSIONS[k]["file"]))]
sys.exit(1 if sum(check(VERSIONS[k]) for k in present) or not present else 0)
