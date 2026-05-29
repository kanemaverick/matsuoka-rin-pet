<p align="center">
  <img src="qa/contact-sheet.png" alt="Matsuoka Rin Codex Pet contact sheet" width="720">
</p>

<h1 align="center">Matsuoka Rin Codex Pet</h1>

<p align="center">
  A minimal, soft-cute desktop pet inspired by Matsuoka Rin from <em>Free!</em>.
</p>

<p align="center">
  <a href="./README.md">中文 README</a>
  ·
  <a href="#install">Install</a>
  ·
  <a href="#animation-preview">Animation Preview</a>
  ·
  <a href="#usability-check">Usability Check</a>
</p>

<p align="center">
  <img alt="Codex Pet" src="https://img.shields.io/badge/Codex-Pet-111111">
  <img alt="Atlas" src="https://img.shields.io/badge/Atlas-1536%C3%971872-0ea5e9">
  <img alt="Format" src="https://img.shields.io/badge/Format-WebP%20RGBA-22c55e">
  <img alt="Language" src="https://img.shields.io/badge/README-English-blue">
</p>

## Overview

This repository contains a ready-to-install Codex custom pet package. The pet is a chibi, sticker-style companion inspired by Matsuoka Rin from *Free!*.

The two required files are already placed at the repository root:

```text
pet.json
spritesheet.webp
```

## Install

### One-command install, recommended

Open PowerShell in this repository and run:

```powershell
.\install.ps1
```

The script copies `pet.json` and `spritesheet.webp` to:

```text
%USERPROFILE%\.codex\pets\matsuoka-rin-sticker
```

Then restart Codex, or reopen the pet selector, and choose **Matsuoka Rin**.

### Manual install

1. Create this folder:

```text
C:\Users\<your-name>\.codex\pets\matsuoka-rin-sticker
```

2. Copy these files into it:

```text
pet.json
spritesheet.webp
```

3. Restart Codex or refresh the pet selector.

## Animation Preview

| State | Preview | Purpose |
| --- | --- | --- |
| `idle` | <img src="qa/previews/idle.gif" width="96"> | Calm breathing and blinking |
| `running-right` | <img src="qa/previews/running-right.gif" width="96"> | Drag movement facing right |
| `running-left` | <img src="qa/previews/running-left.gif" width="96"> | Drag movement facing left |
| `waving` | <img src="qa/previews/waving.gif" width="96"> | Happy greeting wave |
| `jumping` | <img src="qa/previews/jumping.gif" width="96"> | Playful jump / surprise bounce |
| `failed` | <img src="qa/previews/failed.gif" width="96"> | Crying / blocked feedback |
| `waiting` | <img src="qa/previews/waiting.gif" width="96"> | Shy waiting for user input |
| `running` | <img src="qa/previews/running.gif" width="96"> | Study / active task companion |
| `review` | <img src="qa/previews/review.gif" width="96"> | Bashful review / clicked aftermath |

## Atlas Spec

| Item | Value |
| --- | --- |
| File | `spritesheet.webp` |
| Format | WebP with alpha |
| Size | `1536 x 1872` |
| Cell size | `192 x 208` |
| Columns | 8 |
| Rows | 9 |
| Transparent background | Yes |

## State Mapping

| Row | State | Frames | Description |
| --- | --- | ---: | --- |
| 0 | `idle` | 6 | Calm standing, breathing, blink |
| 1 | `running-right` | 8 | Rightward drag movement |
| 2 | `running-left` | 8 | Leftward drag movement |
| 3 | `waving` | 4 | Greeting wave |
| 4 | `jumping` | 5 | Jump / surprise |
| 5 | `failed` | 8 | Failed, blocked, crying feedback |
| 6 | `waiting` | 6 | Waiting for user approval or input |
| 7 | `running` | 6 | Study companion / task running |
| 8 | `review` | 6 | Bashful clicked aftermath / review complete |

Unused cells are transparent.

## Usability Check

Verified locally before publishing:

- `pet.json` exists and points to `spritesheet.webp`
- `spritesheet.webp` exists at the repository root
- Atlas size is `1536 x 1872`
- Atlas mode is `RGBA`
- Unused cells are transparent
- No transparent RGB residue detected
- Contact sheet and 9 GIF previews are included

## Uninstall

Delete this folder:

```text
%USERPROFILE%\.codex\pets\matsuoka-rin-sticker
```

## Notice

This is a fan-made desktop pet project for personal use. Matsuoka Rin, *Free!*, and related names, characters, trademarks, and designs belong to their respective rights holders. This repository does not claim ownership of the original character or franchise.
