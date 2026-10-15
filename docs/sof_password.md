# Soldiers of Fortune (USA) — password format

Tool: `python tools/sof_password.py [PASSWORD]` decodes a password; run it with no arguments to run the self-test.

## Routines (bank $CD)

| Address  | What it does |
|----------|------|
| $CD01E0  | End-of-level hook: if `$0214 != 0 && ($0214 & 3) == 0` (start of world 2/3/4), it calls encode and then text |
| $CD3199  | **Encode**: game state → 12 five-bit values at DP $64–$6F |
| $CD3177  | Values → ASCII at $7F9560 via the alphabet |
| $CD314E  | **Entry**: ASCII → values; sets $74=1 for a character not in the alphabet |
| $CD3039  | **Decode/validate**: un-XOR, checksum, range checks, writes RAM; $74=1 means INVALID PASSWORD |
| $CD3398  | Checksum |
| $CD323E  | XOR every value with $15 |
| $CD324D / $CD3127 | Pack / unpack a 16-bit money value into 3 values |
| $CD329D / $CD32F7 | Add / subtract the equipment value to/from money |

Alphabet ($CD28B5, 32 chars, index = value): `BCDFGHJKLMNPQRSTVWXYZ0123456789@`

## Layout

Each character is one 5-bit value v0..v11, and every value is XORed with $15.

| Value | Bits | Meaning (RAM) |
|-------|------|---------------|
| v0  | 0    | Players flag `$0212`; must equal the current menu setting (P2 is CPU when 0, `$0260 = $0212^1`) |
| v0  | 1–3  | Level counter `$0214` (4 levels per world). Decode keeps only bits 2–3 and requires a nonzero value, so it accepts 4/8/12 = worlds 2/3/4 |
| v0  | 4    | Checksum bit 3 |
| v1  | 0–4  | Index into the character pair table $CD2FFD: (P1 `$0220`, P2 `$025E`), the 30 ordered pairs of distinct characters 0–5 = Brigand, Mercenary, Gentleman, Navvie, Thug, Scientist. Indexes 30/31 are not checked and read code bytes |
| v2  | 0–4  | P1 `$0258` (set to 3 on a new game; probably lives) |
| v3  | 0–4  | P2 `$0296` |
| v4,v5 | v4 0–4, v5 0–1 | n = P1 `$022C` × 11 + P2 `$026A`, stored as v4 = n>>2 and v5 = n&3. Each part must be 0–10 (decode checks n/11 < 11). Also copied to `$022E`/`$026C` |
| v5  | 2–4  | Checksum bits 0–2 |
| v6–v8 | | P1 money `$0224` bits 15–11, 10–6, 5–1 (bit 0 is lost) |
| v9–v11 | | P2 money `$0262`, same packing |

Checksum (computed with the checksum bits cleared): `(sum(v0..v11) - 66) & 0xF`. The game adds `i - 11` to each value v[i], which sums to −66.

Money: before encoding, the game temporarily adds the resale value of each player's equipment to their cash ($CD329D; costs come from the table at $CD11A0 and the multipliers 250/300/15/250/80). After decoding, it subtracts the value of the equipment currently held, floored at 0. So a password keeps total worth, not the items themselves.

## Shop prices

Both versions charge the same. SNES: menu prices at $CD1180 (one word per menu entry), special items at $CD11A0 (one word per item id). Genesis: longs at $45FC+$14A and $45FC+$196, with a copy at $1EF24.

| Item | Price |
|------|-------|
| Extra life | 500 |
| Skill +1 | 300 |
| Health +5 | 75 |
| Speed +1 | 250 |
| Wisdom +1 (only characters that have it) | 80 |
| Special power +1 | 150 |
| Weapon power up | 250 |
| Complete training | the sum of the stats above that aren't at their cap |
| Special items 1–14 | 450, 500, 500, 500, 525, 500, 575, 550, 550, 550, 475, 550, 425, 575 |

The special items are listed in the order of the shop text (bomb, shot burst, map, destroy nodes, repel monster, first aid, freeze monster, shield, party power, air burst, distract monster, molotov, ground mine, dynamite). The caps on each stat come from a per-character table indexed by Skill level ($CD2DF6). The generator's shopping list adds these prices up to set a player's money.

## Leftover test passwords ($CD2D8A)

Bank $CD holds 108 bytes of password text right after the menu strings (`PLAYER TWO`). They split into nine 12-character passwords, and all nine pass the checksum. The odds of that happening by chance are 1 in 16⁹. Nothing in the traced code points at them, and the six byte pairs `8A 2D` elsewhere in the ROM all sit inside data. They look like developer test passwords left in the build.

They can't be entered: all nine have a level counter of 0 (world 1, level 1), and decode rejects that at $CD307C, so the game says INVALID PASSWORD. Decoded with that check skipped:

| Password | Players | Characters (P1 + P2) | Lives | Stats | Money (P1 / P2) |
|----------|---------|----------------------|-------|-------|-----------------|
| `0R210R5DW5D9` | 1 | Thug + Scientist | 2 / 3 | 0 / 0 | 32200 / 32214 |
| `0G11085GB5Q0` | 1 | Navvie + Gentleman | 3 / 3 | 0 / 0 | 31850 / 32320 |
| `0V21045C@5DR` | 1 | Mercenary + Brigand | 2 / 3 | 0 / 0 | 32020 / 32240 |
| `0K110W5JX5C5` | 1 | Navvie + Thug | 3 / 3 | 0 / 0 | 31950 / 32030 |
| `Z@1044HGLH2S` | 2 | Gentleman + Brigand | 3 / 0 | 4 / 4 | 33914 / 32950 |
| `HHN1SPJDV5R4` | 1 | Navvie + Mercenary | 31 / 3 | 10 / 0 | 40394 / 32280 |
| `0H110455P5R4` | 1 | Navvie + Mercenary | 3 / 3 | 0 / 0 | 31740 / 32280 |
| `H411005CQ5CQ` | 1 | Gentleman + Navvie | 3 / 3 | 0 / 0 | 32050 / 32050 |
| `0011PR3ML6@Y` | 1 | Brigand + Mercenary | 3 / 3 | 10 / 10 | 28474 / 29324 |

Money includes the resale value of equipment (see above). The same parties work from world 2 onward: set the world in the generator and it produces a password the game accepts.

## Verification

All five SNES passwords from Almar's Guides decode with a valid checksum and re-encode to the same string. The characters and world they decode to match the guide's labels. The site prints "1" as "I" in three of them.

`python tools/check_generator.py` (needs node) checks that the web generator `tools/sof_password_generator.html` matches `sof_password.py` on random states and strings, for both versions.

## Genesis version

The Genesis cartridge (`Soldiers of Fortune (USA).md`, 68000 code) stores the **same fields** as the SNES but uses a **different encoding**, so passwords don't carry over between the two. Its sixth character is the Preacher instead of the Scientist. `python tools/sof_password.py --genesis PASSWORD` decodes one.

| Address | What it does |
|---------|------|
| $733A | Build 12 plain values at RAM a5+$3BE (temporarily adds equipment value to money, $7488) |
| $834E | Scramble them and write screen tiles to a5+$3B0 (tile table $8420; typed-key alphabet at $8444) |
| $7548 | Decode/validate. Returns d0 = 0 if OK, −1 if invalid, −2 for the wrong player setup |
| $752E | Checksum |

Alphabet: `BCDFGHJKLMNPQRSTVWXYZ0123456789#` (the SNES `@` is `#` here).

Plain values p0..p11:

| Value | Meaning (RAM offsets from a5) |
|-------|------|
| p0 | Character pair index, with the same 30 pairs in the same order as the SNES (table $72FA, characters stored 1–6 at $946/$948) |
| p1 | Bits 2–3 hold the level `$960` (4/8/12). Bit 0 is set when player 2's control type `$415C` ≠ 6, which corresponds to the SNES 2-player bit. Bit 4 is checksum bit 0 |
| p2, p3 | P1/P2 lives `$4C`/`$4E` |
| p4, p5 | n = P1 stat × 11 + P2 stat (`$AF8`/`$B20`). p4 = n & 31, p5 bits 0–1 = n >> 5 (on the SNES the split is the other way round). p5 bits 2/3/4 = checksum bits 2/4/6 |
| p6–p8 | P1 money `$AE4` >> 1, as low, mid and high 5-bit groups |
| p9–p11 | P2 money `$B0C` >> 1, as high, mid and low groups |

Checksum: `d = 0; for i, x in enumerate(p): d = rol8(d + x, (13 - i) & 7)`, then keep `d & 0x55`. It is computed with the checksum bits cleared.

Scramble: swap p0 and p5. The first output character is the swapped-in p5. After that, each output character is the plain value XORed with s, the running sum (mod 32) of the output characters before it.

Verified by running the ROM's own encoder ($834A) and decoder ($7548) in the unicorn 68000 emulator. On 400 random game states, the ROM produced the same passwords as `gen_encode`, decoded them back to the same fields, and rejected each one with −2 when the player setup didn't match. On 2,000 random strings, the ROM and `gen_decode` agreed on which passwords are valid. The PC/Amiga passwords found online use the same alphabet and decode to the right world, but they fail the Genesis checksum, so the PC format is a close relative rather than the same format.
