# The disassembly

[![checks](https://github.com/maxxthunder/soldiersoffortune/actions/workflows/checks.yml/badge.svg)](https://github.com/maxxthunder/soldiersoffortune/actions/workflows/checks.yml)

How to rebuild the listings in `disasm/`, what the tools and checks do, how far the listings reach, and what the controller code does.

Both disassemblers trace code from the ROM's vectors and then from entry points they guess from
pointers. Each listing reassembles to a byte-identical ROM (`tools/reasm.py`, `tools/reasm68k.py`), so
any edit that keeps that true is safe. Names come from `disasm/names.txt`, and the RAM variables
they refer to are described in [ram_map.md](ram_map.md).

## Getting started

You need Python 3.8 or newer, and the ROMs, which are not included. Put them in the repo root as
`Soldiers of Fortune (USA).sfc` and `Soldiers of Fortune (USA).md`. The European
`Chaos Engine, The (Europe).sfc` and `.md` are optional, as are Amiga disk images (`.ipf`, `.adf`).
`.gitignore` keeps all of them out of commits.

Rebuild the listings and check that they reassemble to the exact ROMs:

```bash
python tools/disasm.py "Soldiers of Fortune (USA).sfc" disasm/snes
python tools/reasm.py disasm/snes "Soldiers of Fortune (USA).sfc"
python tools/disasm68k.py "Soldiers of Fortune (USA).md" disasm/genesis
python tools/reasm68k.py disasm/genesis "Soldiers of Fortune (USA).md"
```

Unpack the compressed data into `unpacked/` (gitignored), one `.bin` per block:

```bash
python tools/rnc.py "Soldiers of Fortune (USA).sfc" unpacked/snes
python tools/rnc.py "Soldiers of Fortune (USA).md" unpacked/genesis
```

## Layout

**Listings**

| Path | Contents |
|------|----------|
| `disasm/snes/` | 65816 listings of the SNES ROM, one file per 64 KB bank (`bank_C0.asm` … `bank_D7.asm`) |
| `disasm/genesis/` | 68000 listings of the Genesis ROM, one file per 64 KB (`rom_00.asm` … `rom_17.asm`) |
| `disasm/names.txt` | Names for routines, tables and RAM variables, used by both listings |

**Docs**

| Path | Contents |
|------|----------|
| `sof_password.md` | Password formats for SNES, Genesis and Amiga, European differences, shop prices, the test passwords |
| `ram_map.md` | What the known RAM variables hold, for both versions |
| `disassembly.md` | This page |

**Tools**

| Path | Contents |
|------|----------|
| `tools/sof_password.py` | Password decoder and encoder for SNES, Genesis and Amiga |
| `tools/sof_password_generator.html` | The generator web page |
| `tools/disasm.py`, `tools/reasm.py` | SNES disassembler and reassembler |
| `tools/disasm68k.py`, `tools/reasm68k.py` | Genesis disassembler and reassembler |
| `tools/rnc.py` | RNC unpacker, methods 1 and 2 |
| `tools/names.py` | Loads `disasm/names.txt` |

**Checks**

| Path | What it checks | Needs |
|------|----------------|-------|
| `tools/check_generator.py` | The web page's JavaScript gives the same answers as `sof_password.py` | Node.js |
| `tools/check_68k.py` | Every 68000 opcode round-trips through the disassembler and reassembler | — |
| `tools/sof_genesis_romcheck.py` | The Genesis and Mega Drive ROMs' own password code agrees with `sof_password.py`, run in an emulator | `pip install unicorn`, ROMs |
| `.github/workflows/checks.yml` | CI: runs the checks that don't need ROMs on every push, then publishes the generator page | — |

## Reading the listings

Each line shows the instruction, its address and its raw bytes. SNES lines also show the register
widths: `m`/`x` mean 8-bit A and index registers, `M`/`X` 16-bit. Routines named in
`disasm/names.txt` appear under their names, and a line that touches a named RAM variable shows the
name at the end of its comment. Bytes the tracer never reached are `db` (SNES) or `dc.b` (Genesis).
Compressed blocks and the Genesis Z80 sound driver are marked as regions.

To name something, add a line to `disasm/names.txt` and rebuild the listing; the reassemblers read the
same file, so the listings still rebuild the exact ROMs. Coverage, the tracer's heuristics and the
controller code are described below.

## SNES (`disasm/snes/`, `tools/disasm.py`)

Each instruction line shows its address, its raw bytes and the register widths in effect: `m`/`x`
mean 8-bit A and index registers, `M`/`X` 16-bit. The tracer follows REP/SEP, gives a JSR/JSL the
widths the callee returns with (when all its exits agree), and has PLP restore the widths saved by
the matching PHP. It also follows `JMP`/`JSR (abs,X)` jump tables.

About 4.5% of the ROM is traced as code (31,767 instructions, up from 3.1% when tracing only from the
vectors). The extra entry points come from pointers: `LDA #lo`/`STA a`, `LDA #bank`/`STA a+2` pairs
(the object script pointers that `JML [$46]` runs), `PEA` bank/address pairs, and the bytes after each
`RTS`/`RTL`/`JMP`. A guess is kept only if every path from it decodes without opcodes that the
vector-reached code never uses (`guesses()` and `plausible()`). The rest of the ROM is mostly graphics
and data, about 465 KB of it in 61 RNC blocks. IRQ and NMI jump through RAM pointers
(`JML [$0000]`/`[$0004]`), so the per-frame handlers aren't reached yet. To trace more, add
`(address, m, x)` to `EXTRA_ENTRIES`.

### Controller code

All 11 controller reads in the ROM (`$4218`–`$421B`) are traced, and none checks for a cheat. The
menus read through `$CD014C` (`$4C`/`$4E` held, `$50`/`$52` newly pressed; the new-press bytes are
never read). In game, `$C0B16D` reads into `$94`–`$9A`, and the main loop copies those to
`$06F3`/`$06FB`/`$06FD`, where they drive player control, item cycling (`$C20E11`) and pause on Start
(`$C20831`). The other reads are "press any button" waits and the `$D108DB` list menu. There are no
button-sequence tables or held combos, and no writes to the level, lives or money variables depend
on input.

## Genesis (`disasm/genesis/`, `tools/disasm68k.py`)

Each instruction line shows its address and raw words. The vector table and the jump tables the
tracer followed are shown as `dc.l` (pointers) and `dc.w` (offsets, with their targets in the
comment). The Z80 sound driver, `$14D044`–`$14E262`, is marked as a region; the 68000 copies it into
Z80 RAM at start-up (`z80_load_driver`) and passes it commands through a mailbox at `$FFFF94`.

The code sits in `$000000`–`$01EB2E`, and about 55% of that is traced (4.4% of the ROM); the rest of
that range is mostly tables. Above it the ROM is graphics and level data, much of it in 55 RNC blocks.
Entry points are guessed from `MOVE.L #rom_address`, long pointer tables read with `MOVE.L tbl(PC,Dn)`,
word-offset tables used by `JMP base(PC,Dn)`, and the bytes after each `RTS`/`BRA`/`JMP`. A guess must
decode cleanly along every path and avoid instructions only data turns into (`rare()`). Add
addresses to `EXTRA_ENTRIES` to trace more.

### Controller code

Both pads are read in the vertical-blank handler (`read_pad1` `$0009B0`, `read_pad2` `$000A5A`). Every
reader of the results is in traced code, and a search of the untraced bytes for instructions touching
the controller variables finds none. The readers are the menus (Start counts as fire), a delay you can
skip with Start or C, in-game C to cycle your special power and B to swap powers between players,
letter entry on the password screen, the copy into each player's controls, and attract-mode demo
playback. There are no button codes.

## Compressed data (`tools/rnc.py`)

Both versions pack data with Rob Northen Compression: the SNES with method 2 (61 blocks, plus one
more in the European ROM), the Genesis with method 1 (55 blocks). The listings mark each block as a
region. `tools/rnc.py` unpacks every block in all four ROMs, and every block's packed and unpacked
CRCs match. What each block holds (graphics, maps, text) hasn't been worked out yet.
