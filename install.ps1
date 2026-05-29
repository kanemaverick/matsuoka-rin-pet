$ErrorActionPreference = "Stop"

$PetId = "matsuoka-rin-sticker"
$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$PetDir = Join-Path $env:USERPROFILE ".codex\pets\$PetId"

$PetJson = Join-Path $RepoRoot "pet.json"
$SpriteSheet = Join-Path $RepoRoot "spritesheet.webp"

if (!(Test-Path -LiteralPath $PetJson)) {
    throw "Missing pet.json in repository root."
}

if (!(Test-Path -LiteralPath $SpriteSheet)) {
    throw "Missing spritesheet.webp in repository root."
}

New-Item -ItemType Directory -Force -Path $PetDir | Out-Null
Copy-Item -LiteralPath $PetJson -Destination (Join-Path $PetDir "pet.json") -Force
Copy-Item -LiteralPath $SpriteSheet -Destination (Join-Path $PetDir "spritesheet.webp") -Force

Write-Host "Installed Matsuoka Rin Codex pet to:"
Write-Host $PetDir
Write-Host "Restart Codex or reopen the pet selector to use it."
