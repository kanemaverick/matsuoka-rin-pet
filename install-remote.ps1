$ErrorActionPreference = "Stop"

$PetId = "matsuoka-rin-sticker"
$BaseUrl = "https://raw.githubusercontent.com/kanemaverick/matsuoka-rin-pet/main"
$PetDir = Join-Path $env:USERPROFILE ".codex\pets\$PetId"

New-Item -ItemType Directory -Force -Path $PetDir | Out-Null

Invoke-WebRequest -Uri "$BaseUrl/pet.json" -OutFile (Join-Path $PetDir "pet.json")
Invoke-WebRequest -Uri "$BaseUrl/spritesheet.webp" -OutFile (Join-Path $PetDir "spritesheet.webp")

Write-Host "Installed Matsuoka Rin Codex pet to:"
Write-Host $PetDir
Write-Host "Restart Codex or reopen the pet selector to use it."
