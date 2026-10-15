# RAM map

What each known RAM variable holds, with the routine that shows it. Addresses marked *probably* are
inferred from one use. The same names appear in the listings through `disasm/names.txt`.

## SNES

Work RAM is `$7E0000`–`$7FFFFF`. The low page `$0000`–`$1FFF` is mirrored in every bank, so code
reaches it with 1- and 2-byte addresses. Direct page is `$0000` in bank `$CD` (menus, passwords,
controller reads), but the bank `$C0` game code moves it onto object data, so a direct-page operand
there (for example `LDA $4E`) is usually an object field, not the variable below.

### Controllers ($CD014C, which waits for auto-read and is called from the menu loops)

| Address | Holds |
|---------|-------|
| `$4C` / `$4E` | Player 1 / 2 buttons held (`$4218` / `$421A` layout: B Y Sel St U D L R in the high byte, A X L R in the low byte) |
| `$50` / `$52` | Player 1 / 2 buttons newly pressed this frame |
| `$E8` | Which pads to read: bit 0 player 1, bit 1 player 2 |

That routine serves the menus. In game, `$C0B16D` reads the pads itself, and the main loop copies the
result to `$06F3`/`$06FB`/`$06FD`, which drive player control, item cycling (`$C20E11`) and pause
on Start (`$C20831`).

### Party and progress (password fields, see `docs/sof_password.md`)

| Address | Holds |
|---------|-------|
| `$0212` | 2-player flag (0 = player 2 is the CPU); `$0260` holds its inverse |
| `$0214` | Level counter, world × 4 + level in world |
| `$0220` / `$025E` | Player 1 / 2 character, 0–5 = Brigand, Mercenary, Gentleman, Navvie, Thug, Scientist |
| `$0224` / `$0262` | Player 1 / 2 money (16-bit) |
| `$022C` / `$026A` | Player 1 / 2 level (stat, 0–10); copies at `$022E` / `$026C` |
| `$0258` / `$0296` | Player 1 / 2 lives |

The two players' blocks are `$3E` bytes apart.

### Password screen (entry loop $CD1C20, decode $CD3039)

| Address | Holds |
|---------|-------|
| `$020A` | Number of characters typed (0–12) |
| `$020E` | Cursor position on the letter grid |
| `$64`–`$6F` | The 12 password values while encoding or decoding |
| `$74` | Set to 1 when the password is invalid |
| `$7F9560` | The password as text (12 bytes, `$7F955F,X` with X = 1–12) |

## Genesis

Work RAM is `$FF0000`–`$FFFFFF`. The reset code sets A5 to `$FF0000` and the game keeps it there, so
variables appear as `$xxx(A5)`; the addresses below are those offsets.

### Controllers ($0009B0 for player 1, $000A5A for player 2, from the vertical-blank handler)

| Offset | Holds |
|--------|-------|
| `$3D6` / `$3D7` | Player 1 port byte read with TH high / TH low (raw, active-low: C B R L D U / Start A) |
| `$3D8` / `$3D9` | The same for player 2 |
| `$61` / `$60` | Player 1 / 2 in-game input: bits 0–3 up, down, left, right (opposite directions cancel); bit 7 fire (A) |
| `$65A` | Both players' input ORed together (menus) |
| `$656` / `$657` | Last frame's `$60` / `$61` |
| `$659` | Fire newly pressed: bit 0 player 2, bit 1 player 1 |
| `$6E2` | Last key pressed: `$1B` Start, `$1C` B (player 1), `$15` / `$16` C (player 1 / 2); 0 when none |
| `$6DF` / `$6E0` | Player 2 / 1 control byte for the player objects: `$60`/`$61` plus bit 6 fire-pressed, bit 4 B held |
| `$65B` | Nonzero when player 2's pad is read |

### Party and progress (password fields)

| Offset | Holds |
|--------|-------|
| `$415C` | Player 2's control type: 1 = human, 6 = CPU |
| `$960` | Level counter, world × 4 + level in world |
| `$946` / `$948` | Player 1 / 2 character, 1–6 = Brigand, Mercenary, Gentleman, Navvie, Thug, Preacher |
| `$4C` / `$4E` | Player 1 / 2 lives |
| `$AE4` / `$B0C` | Player 1 / 2 money (32-bit) |
| `$AF8` / `$B20` | Player 1 / 2 level (stat, 0–10) |
| `$AFC` / `$B24` | Player 1 / 2 selected special power ($CC98) |
| `$8CE` / `$8D2` | Player 1 / 2 special powers owned, 4 bytes each; C cycles through them ($CC98) |
| `$46E` | Pointer to the equipment cost table (used when a password adds equipment value to money, $7488) |

Each player's block of stats is `$28` bytes long.

### Objects

| Offset | Holds |
|--------|-------|
| `$40B8` / `$412E` | Player 1 / 2 object (`$76` bytes each). Field `$6C` bit 7: player is in play. Field `$49` bit 3 is set when special powers are swapped ($CC5C) |

### Password screen ($7548 decode, $834E encode, $8196 entry)

| Offset | Holds |
|--------|-------|
| `$3B0` | The 12 password characters as screen tiles |
| `$3BE` | The 12 plain password values |
| `$6EC` / `$6ED` | Cursor row / column on the letter grid |

### Other

| Offset | Holds |
|--------|-------|
| `$472` | Frame counter, incremented every vertical blank |
| `$85C` | *Probably* the game mode: 0 normal play, 2 and 3 attract-mode demo (input then comes from `$860`) |
| `$860` / `$85E` | Demo input stream pointer / position ($2C1A) |
