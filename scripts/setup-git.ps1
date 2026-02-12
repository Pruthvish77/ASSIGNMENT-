# Git Setup Script - Production App
# Run from project root: .\scripts\setup-git.ps1

$ErrorActionPreference = "Stop"
$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

Write-Host "`n=== Git Setup ===" -ForegroundColor Cyan
Write-Host "Project root: $projectRoot`n" -ForegroundColor Gray

if (Test-Path ".git") {
    Write-Host "Git repository already initialized." -ForegroundColor Yellow
} else {
    Write-Host "Initializing Git repository..." -ForegroundColor Cyan
    git init
}

Write-Host "`nAdding files..." -ForegroundColor Cyan
git add .

Write-Host "Creating initial commit..." -ForegroundColor Cyan
git commit -m "Initial project structure setup"

$remoteUrl = "https://github.com/Abhi-s-k/ASSIGNMENT.git"
Write-Host "`n=== Next Steps ===" -ForegroundColor Green
Write-Host "Add remote and push:"
Write-Host "  git remote add origin $remoteUrl"
Write-Host "  git branch -M main"
Write-Host "  git push -u origin main`n"
