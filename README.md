# Matsuoka Rin Codex Pet

A soft, minimal desktop pet inspired by Matsuoka Rin from *Free!*.

This repository contains a ready-to-install Codex custom pet package:

- `pet.json`
- `spritesheet.webp`

The sprite sheet uses the Codex pet atlas format: `1536 x 1872`, 8 columns by 9 rows, with `192 x 208` cells.

## Preview

![Contact sheet](qa/contact-sheet.png)

Animation previews are available in [`qa/previews`](qa/previews).

## Install

### Windows PowerShell

From this repository directory:

```powershell
$petId = "matsuoka-rin-sticker"
$petDir = Join-Path $env:USERPROFILE ".codex\pets\$petId"
New-Item -ItemType Directory -Force -Path $petDir
Copy-Item -Path ".\pet.json", ".\spritesheet.webp" -Destination $petDir -Force
```

Then restart Codex, or reopen the pet selector, and choose **Matsuoka Rin**.

### Manual Install

1. Create this folder:

```text
C:\Users\<you>\.codex\pets\matsuoka-rin-sticker
```

2. Copy these files into it:

```text
pet.json
spritesheet.webp
```

3. Restart Codex or refresh the pet selector.

## File Structure

```text
.
├── pet.json
├── spritesheet.webp
├── qa
│   ├── contact-sheet.png
│   └── previews
│       ├── idle.gif
│       ├── running-right.gif
│       ├── running-left.gif
│       ├── waving.gif
│       ├── jumping.gif
│       ├── failed.gif
│       ├── waiting.gif
│       ├── running.gif
│       └── review.gif
└── README.md
```

## Animation States

The sprite sheet follows the 9-row Codex pet contract:

| Row | State | Frames | Description |
| --- | --- | ---: | --- |
| 0 | `idle` | 6 | Calm standing, soft breathing, blink |
| 1 | `running-right` | 8 | Drag movement facing right |
| 2 | `running-left` | 8 | Drag movement facing left |
| 3 | `waving` | 4 | Happy greeting wave |
| 4 | `jumping` | 5 | Playful jump / surprised bounce |
| 5 | `failed` | 8 | Crying / blocked reaction |
| 6 | `waiting` | 6 | Shy waiting for user input |
| 7 | `running` | 6 | Study / active task companion |
| 8 | `review` | 6 | Bashful review / clicked aftermath |

Unused cells are transparent.

## Compatibility

This pet is intended for Codex custom pet loading from:

```text
~/.codex/pets/matsuoka-rin-sticker/
```

The `pet.json` manifest expects the sprite sheet to be in the same folder:

```json
{
  "spritesheetPath": "spritesheet.webp"
}
```

## QA Notes

The final atlas was validated locally with:

- Format: WebP with alpha
- Size: `1536 x 1872`
- Cell size: `192 x 208`
- Transparent unused cells
- No transparent RGB residue detected

## Notice

This is a fan-made desktop pet for personal use. Matsuoka Rin and *Free!* belong to their respective rights holders. This repository does not claim ownership of the original character or franchise.
