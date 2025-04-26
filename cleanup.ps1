# SignLapse GitHub Preparation Script
# This script helps clean up the repository before pushing to GitHub

Write-Host "SignLapse GitHub Preparation Script" -ForegroundColor Cyan
Write-Host "-------------------------------------" -ForegroundColor Cyan

# Remove old YouTube extension directory
if (Test-Path -Path "youtube_extension_old") {
    Write-Host "Removing old YouTube extension directory..." -ForegroundColor Yellow
    Remove-Item -Path "youtube_extension_old" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Done!" -ForegroundColor Green
}

# Remove large directories that are in .gitignore
$largeDirectories = @(
    ".venv",
    "node_modules",
    "sign_to_audio/myenv",
    "sign_to_audio/SignCoach/signcoach",
    "website/node_modules",
    "website/.next"
)

foreach ($dir in $largeDirectories) {
    if (Test-Path -Path $dir) {
        Write-Host "Removing $dir (this is in .gitignore and will be recreated during installation)..." -ForegroundColor Yellow
        Remove-Item -Path $dir -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Done!" -ForegroundColor Green
    }
}

# Clean up any __pycache__ directories
Write-Host "Removing Python cache directories..." -ForegroundColor Yellow
Get-ChildItem -Path . -Include "__pycache__" -Recurse -Directory | 
    ForEach-Object { Remove-Item -Path $_.FullName -Recurse -Force }
Write-Host "Done!" -ForegroundColor Green

# Clean up any .DS_Store files
Write-Host "Removing .DS_Store files..." -ForegroundColor Yellow
Get-ChildItem -Path . -Include ".DS_Store" -Recurse -File | 
    ForEach-Object { Remove-Item -Path $_.FullName -Force }
Write-Host "Done!" -ForegroundColor Green

Write-Host "`nRepository is now ready for GitHub!" -ForegroundColor Green
Write-Host "Follow these steps to push to GitHub:" -ForegroundColor Cyan
Write-Host "1. Create a new repository on GitHub" -ForegroundColor White
Write-Host "2. Run the following commands:" -ForegroundColor White
Write-Host "   git init" -ForegroundColor White
Write-Host "   git add ." -ForegroundColor White
Write-Host "   git commit -m 'Initial commit'" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/yourusername/SignLapse.git" -ForegroundColor White
Write-Host "   git push -u origin master" -ForegroundColor White
Write-Host "`nNote: Make sure to replace 'yourusername' with your actual GitHub username" -ForegroundColor Yellow 