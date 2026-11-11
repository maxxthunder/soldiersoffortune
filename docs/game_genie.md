# Game Genie codes (SNES)

The official Game Genie list (`gg_snes.txt`) has 115 codes for Soldiers of Fortune on the Super
Nintendo. There are none for the Genesis. Below, each code is decoded to the ROM address it patches
in `Soldiers of Fortune (USA).sfc`, with the original byte and what it does. Every code's address
holds the original byte the code expects.

None of them change how passwords work.

## Game code

| Codes | Address | Original → new | What it patches |
|-------|---------|----------------|-----------------|
| `DCE0-87AD`, `F0E0-87AD` | $C0F24F | $05 → $0A, $14 | `LDA #$0005`: small food heals 5 (×2, ×4) |
| `F3E9-8FDD`, `7AE9-8FDD` | $C0F254 | $0F → $1E, $3C | `LDA #$000F`: large food heals 15 (×2, ×4) |
| `D0EB-8DDD` | $C0F290 | $07 → $04 | `CMP #$07`: special power limit is 6; this makes it 3 |
| `6DEB-8D0D` | $C0F291 | $B0 → $80 | `BCS` → `BRA`: a special power pickup always fills the meter |
| `3CC6-870D` | $C0A28D | $3A → $EA | `DEC` → `NOP`: special powers aren't used up |
| `CBC1-E46F` | $C0A76A | $D6 → $A9 | `DEC $90,X` → `LDA #$90`: infinite lives |

## Starting health

One byte per character, `$37` apart, inside the per-character table at $CD2DF6. Each code sets it
to $60 (96).

| Code | Address | Original | Character |
|------|---------|----------|-----------|
| `1D4E-5475` | $CD2DF8 | 25 | Brigand (the list says Mercenary) |
| `1D44-87E5` | $CD2E2F | 25 | Mercenary (the list says Brigand) |
| `1D41-8F85` | $CD2E66 | 20 | Gentleman |
| `1D4B-8755` | $CD2E9D | 30 | Navvie |
| `1D42-8F75` | $CD2ED4 | 30 | Thug |
| `1D4D-E4E5` | $CD2F0B | 15 | Scientist |

The table is in character order (0 = Brigand), so the list has the first two names swapped. Both
start at 25, so the codes behave the same either way.

## Shop prices

The codes change one byte of the menu price words at $CD1180 (see [Shop prices](sof_password.md#shop-prices)).

| Code | Address | Price |
|------|---------|-------|
| `DDF6-5D50` | $CD1181 | Extra life 500 → 244 |
| `DDF6-5DE0` | $CD1183 | Skill 300 → 44 |
| `DFF6-5F70`, `FBF6-5F70` | $CD1184 | Health 75 → 1, 25 |
| `DFF6-5F80`, `10F6-5F80` | $CD1186 | Speed 250 → 1, 100 |
| `DFF6-5470`, `FBF6-5470` | $CD1188 | Wisdom 80 → 1, 25 |
| `DFF6-5480`, `74F6-5480` | $CD118A | Special power 150 → 1, 50 |
| `DDF6-5750` | $CD118D | Complete training 1000 → 232 |
| `DFF6-5780`, `10F6-5780` | $CD118E | Weapon power up 250 → 1, 100 |

The list describes `DDF6-5750` as "??? costs 44 instead of 300", which is copied from the skill code.
It patches the Complete training entry, which the shop charges as the sum of the uncapped stats
instead, so the code may have no effect.

## Starting special powers

Each character has 4 special power slots at $CD2F40 + 4 × character, holding a special item id
(1–14, in the shop order: bomb, shot burst, map, destroy nodes, repel monster, first aid, freeze
monster, shield, party power, air burst, distract monster, molotov, ground mine, dynamite).

| Character | Slot 1 | Starts with |
|-----------|--------|-------------|
| Brigand | $CD2F40 | Shot burst (2) |
| Mercenary | $CD2F44 | Bomb (1) |
| Gentleman | $CD2F48 | Map (3) |
| Navvie | $CD2F4C | Dynamite (14) |
| Thug | $CD2F50 | Molotov (12) |
| Scientist | $CD2F54 | First aid (6) |

The list's 84 "starts with" codes write each id 1–14 into each character's slot 1. The first two
letters pick the power and the rest pick the character:

| Power | Prefix | | Character | Suffix |
|-------|--------|-|-----------|--------|
| Bomb | `DF` | | Brigand | `40-ED75` |
| Shot burst | `D4` | | Mercenary | `40-EF75` |
| Map | `D7` | | Gentleman | `40-E475` |
| Destroy nodes | `D0` | | Navvie | `40-E775` |
| Repel monster | `D9` | | Thug | `49-ED75` |
| First aid | `D1` | | Scientist | `49-EF75` |
| Freeze monster | `D5` | | | |
| Shield | `D6` | | | |
| Party power | `DB` | | | |
| Air burst | `DC` | | | |
| Distract monster | `D8` | | | |
| Molotov | `DA` | | | |
| Ground mine | `D2` | | | |
| Dynamite | `D3` | | | |

So `DB40-E775` gives the Navvie Party power. Six of the codes write the power the character already
has. The list notes that the power shown when you hire the crew ignores these codes, and that destroy
nodes shows as map.

Four more codes add Party power to an empty slot: `DB40-EDE5` (Brigand, slot 4, $CD2F43),
`DB40-EFE5` (Mercenary, slot 4, $CD2F47), `DB40-E785` (Navvie, slot 3, $CD2F4E), `DB49-ED85` (Thug,
slot 3, $CD2F52).
