"""Cross-check the JS in sof_password_generator.html against sof_password.py (needs node).

Usage: python tools/check_generator.py
Encodes random game states and decodes random strings with both, for SNES, Genesis and Amiga,
and fails on any difference in the password, the decoded fields, or valid/invalid.
"""
import json
import os
import random
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import sof_password as P  # noqa: E402

JS = r"""
const fs = require("fs");
const src = fs.readFileSync(process.argv[1], "utf8").match(/<script>([\s\S]*)<\/script>/)[1];
const module = { exports: {} };
new Function("module", src)(module);
const G = module.exports, cases = JSON.parse(fs.readFileSync(0, "utf8"));
const run = (f, a) => { try { return f(a); } catch (e) { return null; } };
console.log(JSON.stringify(cases.map(([fn, a]) => run(G[fn], a))));
"""


def run_py(fn, a):
    try:
        return fn(a)
    except ValueError:
        return None


def main(n=3000):
    rnd = random.Random(1)
    cases, want = [], []
    for _ in range(n):
        a, b = rnd.sample(range(6), 2)
        f = {"two_players": rnd.randint(0, 1), "level": rnd.choice((4, 8, 12)), "p1_char": a, "p2_char": b,
             "p1_lives": rnd.randint(0, 31), "p2_lives": rnd.randint(0, 31), "p1_stat": rnd.randint(0, 10),
             "p2_stat": rnd.randint(0, 10), "p1_money": rnd.randrange(0, 65536, 2), "p2_money": rnd.randrange(0, 65536, 2)}
        for js, py in (("encode", P.encode), ("genEncode", P.gen_encode), ("amigaEncode", P.amiga_encode)):
            cases.append((js, f if js != "amigaEncode" else dict(f, level=rnd.choice((0, 4, 8, 12)))))
            want.append(py(cases[-1][1]))
        for js, py, abc in (("decode", P.decode, P.ALPHABET), ("genDecode", P.gen_decode, P.GEN_ALPHABET),
                            ("amigaDecode", P.amiga_decode, P.GEN_ALPHABET)):
            pw = "".join(rnd.choice(abc) for _ in range(12))
            cases.append((js, pw))
            want.append(run_py(py, pw))
    # also decode the passwords just encoded, so the valid path is exercised, not only rejections
    for (fn, _), pw in list(zip(cases, want)):
        if fn in ("encode", "genEncode", "amigaEncode"):
            js, py = {"encode": ("decode", P.decode), "genEncode": ("genDecode", P.gen_decode),
                      "amigaEncode": ("amigaDecode", P.amiga_decode)}[fn]
            cases.append((js, pw))
            want.append(run_py(py, pw))
    html = os.path.join(HERE, "sof_password_generator.html")
    got = json.loads(subprocess.run(["node", "-e", JS, html], input=json.dumps(cases),
                                    capture_output=True, text=True, check=True).stdout)
    bad = [(c, w, g) for c, w, g in zip(cases, want, got) if w != g]
    for c, w, g in bad[:10]:
        print("MISMATCH", c, "py:", w, "js:", g)
    valid = sum(w is not None for (fn, _), w in zip(cases, want) if fn in ("decode", "genDecode", "amigaDecode"))
    print(f"{len(cases)} cases ({valid} valid decodes), {len(bad)} mismatches")
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
