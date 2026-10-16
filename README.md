<p align="center">
  <img src="docs/images/soldiers_of_fortune.png" alt="Soldiers of Fortune" height="90">
  &nbsp;&nbsp;
  <img src="docs/images/the_chaos_engine.png" alt="The Chaos Engine" height="60">
</p>

# Soldiers of Fortune / The Chaos Engine — Password Generator

<p align="center"><img src="docs/images/characters.png" alt="The six mercenaries: Brigand, Mercenary, Gentleman, Navvie, Thug and Scientist (Preacher)" width="504"></p>

**[Open the password generator →](https://maxxthunder.github.io/soldiersoffortune/)** &nbsp;[![v1.0.10](https://img.shields.io/badge/version-1.0.10-d4894a)](CHANGELOG.md)

- **Make a password** for any world, party, lives, character levels and money.
- **Decode a password** you already have to see what it holds, and fix typos.
- **Plan your shopping**: pick the gear each player wants and it works out the money they need.

It works offline too: save [`tools/sof_password_generator.html`](tools/sof_password_generator.html) and open it in a browser.

<p align="center">
  <img src="docs/images/generator-1.0.8.png" alt="The generator: console picker, password, and the two players' characters, lives and levels" width="560">
  &nbsp;
  <img src="docs/images/big_text-1.0.10.png" alt="Big text view on a phone" width="248">
</p>
<p align="center"><sub>Left: the generator. Right: <b>Big text</b>, for reading the password off your phone while you type it in.</sub></p>

## Supported versions

| Console | Released as | Passwords |
|---------|-------------|-----------|
| Super Nintendo | *Soldiers of Fortune* (US), *The Chaos Engine* (Europe) | Same for the US and European cartridges |
| Genesis / Mega Drive | *Soldiers of Fortune* (US), *The Chaos Engine* (Europe) | Same for the US and European cartridges, but different from the Super Nintendo |
| Amiga | *The Chaos Engine*, original (A500) and AGA (A1200) | Different from the consoles; only the original version takes World 1 |

## Starter passwords

Everything maxed for both players: 31 lives, character level 10 and 65,534 money, with the Brigand and the
Thug. Start the game with the same number of players as the row.

| World | Players | Super Nintendo | Genesis / Mega Drive | Amiga |
|-------|---------|----------------|----------------------|-------|
| 2 | 1 | `C1NN P4NN NNNN` | `#P0B KHZB BBBB` | `#P0B K4B7 GBBB` |
| 3 | 1 | `R1NN PMNN NNNN` | `#K4B KHZB BBBB` | `#K4B K4B7 GBBB` |
| 4 | 1 | `41NN P4NN NNNN` | `62RB KHZB BBBB` | `#YRB K877 GBBB` |
| 2 | 2 | `B1NN PHNN NNNN` | `#N1B KHZB BBBB` | `#N1B K4B7 GBBB` |
| 3 | 2 | `71NN P0NN NNNN` | `#J5B KHZB BBBB` | `#J5B K4B7 GBBB` |
| 4 | 2 | `31NN PHNN NNNN` | `#XSB KHZB BBBB` | `#XSB K4B7 GBBB` |

For any other party, use the [generator](https://maxxthunder.github.io/soldiersoffortune/).

## If a password won't work

- **Player count.** Start the game with the same number of players as the password, or it's rejected.
- **Console.** A password only works on the console it was made for. Paste it into the generator and it says which one.
- **Typo.** Characters like B/8, S/5 and 0/Q are easy to mix up. The generator suggests fixes.
- **World 1.** Only the original Amiga version takes World 1 passwords. Every other version starts there, so its passwords start at World 2.

<p align="center"><img src="docs/images/decode-1.0.8.gif" alt="Decoding a mistyped password: the generator finds the checksum error, suggests the fix, and loads the party" width="600"></p>

## What a password keeps

World, party, each player's lives, character level and money. Items aren't saved, but the money
includes what the equipment is worth, so you can buy it back. Shop prices are the same on every
version. [Prices →](docs/sof_password.md#shop-prices)

| Setting | Range |
|---------|-------|
| Lives | 0–31 per player |
| Character level | 0–10 per player |
| Money | 0–65,534 per player, in steps of 2: an odd amount is saved as one less |

<details>
<summary><b>Research notes</b></summary>

*Soldiers of Fortune* is the US release of The Bitmap Brothers' *The Chaos Engine* (1993). The
generator rests on the password code of all three versions, found in byte-exact disassemblies of the
SNES and Genesis games and checked against the games' own code.

- **Password formats.** The SNES and Genesis store the same things but encode them differently.
  [Format →](docs/sof_password.md)
- **Amiga.** The Genesis password code came from the Amiga game: same alphabet, checksum and layout,
  but the scramble swaps a different pair of characters. Both Amiga versions were checked by running
  the game's own code in an emulator. [Amiga →](docs/sof_password.md#amiga-version)
- **No cheat codes.** Every controller read in both console versions is traced, and none checks for
  a button code. The decoders accept no special passwords either.
- **Leftover test passwords.** The SNES ROM holds nine unused developer passwords. Each has a valid
  checksum but starts in World 1, which the game refuses. [List →](docs/sof_password.md#leftover-test-passwords-cd2d8a)

</details>

<details>
<summary><b>Under the hood</b></summary>

The password tool also runs from the command line, with Python 3.8 or newer and no ROMs needed
(with no arguments, it runs its self-test):

```bash
python tools/sof_password.py W1V19S2SH21Q
python tools/sof_password.py --genesis 9NB5JM115GQ#
python tools/sof_password.py --amiga '#PMVFJGYFJY2'
```

| Doc | Contents |
|-----|----------|
| [docs/sof_password.md](docs/sof_password.md) | Password formats for SNES, Genesis and Amiga, European differences, shop prices, the test passwords |
| [docs/disassembly.md](docs/disassembly.md) | Rebuilding the SNES and Genesis listings, the tools and checks, coverage, the controller code |
| [docs/ram_map.md](docs/ram_map.md) | What the known RAM variables hold |
| [CHANGELOG.md](CHANGELOG.md) | What changed in each version of the generator |

</details>

## Credits

*The Chaos Engine* and *Soldiers of Fortune* are by The Bitmap Brothers. The character sprites on the
generator page are from a sprite sheet ripped by Yawackhary; the art is by The Bitmap Brothers
(Daniel Malone). The ROMs are not included in this repo.
