"""Soldiers of Fortune (USA) password decoder/encoder for the SNES, Genesis and Amiga versions.

Usage: python tools/sof_password.py [--genesis | --amiga] [PASSWORD ...]   (no args: run self-test)
SNES mirrors bank $CD: encode $CD3199, decode $CD3039, checksum $CD3398, XOR $CD323E,
text<->values $CD314E/$CD3177. Genesis mirrors 68000 code: build $733A, scramble $834E,
decode $7548, checksum $752E. See docs/sof_password.md.
"""
import sys

ALPHABET = "BCDFGHJKLMNPQRSTVWXYZ0123456789@"   # $CD28B5
CHARS = ["Brigand", "Mercenary", "Gentleman", "Navvie", "Thug", "Scientist"]
# $CD2FFD: (player 1, player 2) character pairs; index 30/31 read past the table
PAIRS = [(a, b) for a in range(6) for b in range(6) if a != b]


def checksum(v):
    """$CD3398: sum of v[i] + (i - 11), low 4 bits (checksum bits must be clear)."""
    return (sum(v) - 66) & 0xF


def decode(pw):
    """Password -> dict, or ValueError where the game would show INVALID PASSWORD."""
    pw = pw.upper().replace(" ", "").replace("-", "").replace("I", "1").replace("O", "0")  # as typed: I/O for 1/0
    if len(pw) != 12 or any(c not in ALPHABET for c in pw):
        raise ValueError("need 12 characters from " + ALPHABET)
    v = [ALPHABET.index(c) ^ 0x15 for c in pw]
    stored = (v[0] & 0x10) >> 1 | (v[5] & 0x1C) >> 2
    v[0] &= 0x0F
    v[5] &= 0x03
    if checksum(v) != stored:
        raise ValueError("bad checksum")
    if not v[0] & 0x0C:
        raise ValueError("level must be 4, 8 or 12")
    n = v[4] << 2 | v[5]
    if n // 11 >= 11:
        raise ValueError("stat out of range")
    if v[1] >= len(PAIRS):
        raise ValueError("character pair past the table (game accepts it, reads junk)")
    money = lambda i: v[i] << 11 | v[i + 1] << 6 | v[i + 2] << 1
    return {
        "two_players": v[0] & 1,       # $0212, must match the menu setting or the game rejects it
        "level": v[0] & 0x0C,          # $0214 = world*4 + level-in-world; only 4/8/12 restore
        "p1_char": PAIRS[v[1]][0],     # $0220
        "p2_char": PAIRS[v[1]][1],     # $025E
        "p1_lives": v[2],              # $0258
        "p2_lives": v[3],              # $0296
        "p1_stat": n // 11,            # $022C/$022E, 0-10
        "p2_stat": n % 11,             # $026A/$026C, 0-10
        "p1_money": money(6),          # $0224, cash + equipment value, even
        "p2_money": money(9),          # $0262
    }


def encode(f):
    """Dict as returned by decode() -> password, as $CD3199 builds it."""
    v = [0] * 12
    v[0] = f["level"] & 0x1E | f["two_players"] & 1
    v[1] = PAIRS.index((f["p1_char"], f["p2_char"]))
    v[2], v[3] = f["p1_lives"] & 0x1F, f["p2_lives"] & 0x1F
    n = f["p1_stat"] * 11 + f["p2_stat"]
    v[4], v[5] = n >> 2 & 0x1F, n & 3
    for i, m in ((6, f["p1_money"]), (9, f["p2_money"])):
        v[i:i + 3] = [m >> 11 & 0x1F, m >> 6 & 0x1F, m >> 1 & 0x1F]  # bit 0 is dropped
    c = checksum(v)
    v[0] |= c << 1 & 0x10
    v[5] |= c << 2 & 0x1C
    return "".join(ALPHABET[x ^ 0x15] for x in v)


GEN_ALPHABET = "BCDFGHJKLMNPQRSTVWXYZ0123456789#"   # $8444 (screen tiles at $8420)
GEN_CHARS = ["Brigand", "Mercenary", "Gentleman", "Navvie", "Thug", "Preacher"]  # pair table $72FA uses 1-6


def gen_checksum(p):
    """$752E: add each value then rotate left by (13 - i) & 7; the game keeps bits 0/2/4/6."""
    d = 0
    for i, x in enumerate(p):
        d = (d + x) & 0xFF
        r = (13 - i) & 7
        d = (d << r | d >> (8 - r)) & 0xFF
    return d & 0x55


def gen_encode(f, swap=5):
    """Same fields as encode(); layout and scramble of the Genesis version. The Amiga version is the
    same with swap=7 (see amiga_encode)."""
    n = f["p1_stat"] * 11 + f["p2_stat"]
    m1, m2 = f["p1_money"] >> 1, f["p2_money"] >> 1
    p = [PAIRS.index((f["p1_char"], f["p2_char"])), f["level"] & 0x1E | f["two_players"] & 1,
         f["p1_lives"] & 0x1F, f["p2_lives"] & 0x1F, n & 0x1F, n >> 5 & 3,
         m1 & 0x1F, m1 >> 5 & 0x1F, m1 >> 10 & 0x1F, m2 >> 10 & 0x1F, m2 >> 5 & 0x1F, m2 & 0x1F]
    c = gen_checksum(p)
    p[1] |= (c & 1) << 4
    p[5] |= (c >> 2 & 1) << 2 | (c >> 4 & 1) << 3 | (c >> 6 & 1) << 4
    q = p[:]
    q[0], q[swap] = p[swap], p[0]
    s, v = q[0], [q[0]]
    for x in q[1:]:  # each value is XORed with a running sum of the previous output
        v.append(x ^ s)
        s = (s + v[-1]) & 0x1F
    return "".join(GEN_ALPHABET[x] for x in v)


def gen_decode(pw, swap=5, world1=False):
    """Genesis password -> dict. swap=7, world1=True decodes an original Amiga password (amiga_decode)."""
    pw = pw.upper().replace(" ", "").replace("-", "").replace("I", "1").replace("O", "0")  # as typed: I/O for 1/0
    if len(pw) != 12 or any(c not in GEN_ALPHABET for c in pw):
        raise ValueError("need 12 characters from " + GEN_ALPHABET)
    v = [GEN_ALPHABET.index(c) for c in pw]
    if not any(v):
        raise ValueError("all-B password is rejected")
    s, p = v[0], [v[0]]
    for x in v[1:]:
        p.append(x ^ s)
        s = (s + x) & 0x1F
    p[0], p[swap] = p[swap], p[0]
    stored = (p[1] >> 4 & 1) | (p[5] >> 2 & 1) << 2 | (p[5] >> 3 & 1) << 4 | (p[5] >> 4 & 1) << 6
    p[1] &= ~0x10
    p[5] &= 3
    if gen_checksum(p) != stored:
        raise ValueError("bad checksum")
    if p[0] >= len(PAIRS):
        raise ValueError("character pair past the table")
    if p[1] & 2 or not (world1 or p[1] & ~1):
        raise ValueError("level must be 0, 4, 8 or 12" if world1 else "level must be 4, 8 or 12")
    n = p[4] | p[5] << 5
    if n // 11 >= 11:
        raise ValueError("stat out of range")
    return {
        "two_players": p[1] & 1,       # 1 when P2 control $415C != 6; must match the game setup
        "level": p[1] & ~1,            # $0960
        "p1_char": PAIRS[p[0]][0],     # $0946 (1-based in RAM)
        "p2_char": PAIRS[p[0]][1],     # $0948
        "p1_lives": p[2],              # $004C
        "p2_lives": p[3],              # $004E
        "p1_stat": n // 11,            # $0AF8
        "p2_stat": n % 11,             # $0B20
        "p1_money": (p[8] << 10 | p[7] << 5 | p[6]) << 1,   # $0AE4, cash + equipment value
        "p2_money": (p[9] << 10 | p[10] << 5 | p[11]) << 1,  # $0B0C
    }


def amiga_encode(f):
    """The Amiga version (original and AGA): the Genesis format, but the scramble swaps value 0 with
    value 7 instead of 5. Level 0 (world 1) encodes too; only the original Amiga version accepts it."""
    return gen_encode(f, swap=7)


def amiga_decode(pw, aga=False):
    """Amiga password -> dict. The original version accepts world 1 (level 0); the AGA version doesn't."""
    return gen_decode(pw, swap=7, world1=not aga)


def show(d, chars=CHARS):
    return {k: chars[x] if k.endswith("_char") else x for k, x in d.items()}


# SNES passwords published at almarsguides.com; the site writes "1" as "I" in three of them
KNOWN = {"W1V19S2SH21Q": "level 2, Brigand + Thug", "C9W18N209ZPW": "level 2, Gentleman + Mercenary",
         "CJW19D2QQ2XF": "level 2, Navvie + Scientist", "R18VDQWF01VP": "level 3, Brigand + Thug",
         "4141L1V4QVX6": "level 4, Brigand + Thug"}


def self_test():
    for pw in KNOWN:
        d = decode(pw)
        assert encode(d) == pw, (pw, d)
    base = decode(next(iter(KNOWN)))
    for k, vals in [("two_players", [0, 1]), ("level", [4, 8, 12]), ("p1_lives", range(32)),
                    ("p2_lives", range(32)), ("p1_stat", range(11)), ("p2_stat", range(11)),
                    ("p1_money", range(0, 65536, 2)), ("p2_money", range(0, 65536, 2))]:
        for x in vals:
            f = dict(base, **{k: x})
            assert decode(encode(f)) == f and gen_decode(gen_encode(f)) == f, (k, x)
    for a, b in PAIRS:
        f = dict(base, p1_char=a, p2_char=b)
        assert decode(encode(f)) == f and gen_decode(gen_encode(f)) == f
    for pw in GEN_KNOWN:
        assert gen_encode(gen_decode(pw)) == pw, pw
    for pw, (note, f) in AMIGA_KNOWN.items():
        assert amiga_encode(f) == pw and amiga_decode(pw) == f, pw
        if f["level"]:
            assert amiga_decode(pw, aga=True) == f
            try:
                assert gen_decode(pw) != f  # not the same party as a Genesis password
            except ValueError:
                pass
    for k, vals in [("level", [0, 4, 8, 12]), ("p1_lives", range(32)), ("p1_stat", range(11)), ("p2_money", range(0, 65536, 2))]:
        for x in vals:
            f = dict(base, **{k: x})
            assert amiga_decode(amiga_encode(f)) == f, ("amiga", k, x)
    pw = encode(base)
    bad = pw[:3] + ALPHABET[(ALPHABET.index(pw[3]) + 1) % 32] + pw[4:]
    try:
        decode(bad)
        raise AssertionError(bad)
    except ValueError:
        pass
    print("ok")


# Produced by the Amiga game's own encoder (original $B51A, AGA $AFA8) run in an emulator; see docs/sof_password.md.
# The AGA version produces the same passwords except for world 1, which it rejects.
_party = lambda two, level, a, b, l1, l2, s1, s2, m1, m2: dict(two_players=two, level=level, p1_char=a, p2_char=b, p1_lives=l1,
                                                               p2_lives=l2, p1_stat=s1, p2_stat=s2, p1_money=m1, p2_money=m2)
AMIGA_KNOWN = {
    "#PMVFJGYFJY2": ("world 2, Brigand + Thug", _party(0, 4, 0, 4, 3, 3, 0, 0, 2000, 2000)),
    "6F2WFF7DT5SC": ("world 3, Gentleman + Brigand", _party(0, 8, 2, 0, 9, 4, 6, 3, 12000, 8000)),
    "KX7VM5XPHN#G": ("world 2, 2 players, Navvie + Gentleman", _party(1, 4, 3, 2, 5, 5, 1, 1, 500, 750)),
    "#YRBKC3D9BBB": ("world 4, Preacher + Thug, everything maxed", _party(0, 12, 5, 4, 31, 31, 10, 10, 65534, 65534)),
    "#TR3YS72KSF2": ("world 1 (original Amiga only), Mercenary + Navvie", _party(0, 0, 1, 3, 3, 3, 0, 0, 2000, 2000)),
}

# Produced by the Genesis ROM's own encoder ($834A) run in an emulator; see docs/sof_password.md
GEN_KNOWN = {"JS2TF2MW4G8W": "world 3, Gentleman + Brigand", "NS8SB98X#NBC": "world 2, Preacher + Thug",
             "T5S4LM2J8DWD": "world 2, 2 players, Navvie + Gentleman", "X522Q03Y61Y5": "world 3, Navvie + Preacher"}


if __name__ == "__main__":
    args = sys.argv[1:]
    gen, amiga = "--genesis" in args, "--amiga" in args
    args = [a for a in args if a not in ("--genesis", "--amiga")]
    if not args:
        self_test()
        for pw, note in KNOWN.items():
            print(pw, note, show(decode(pw)))
    for p in args:
        print(p, show(amiga_decode(p), GEN_CHARS) if amiga else show(gen_decode(p), GEN_CHARS) if gen else show(decode(p)))
