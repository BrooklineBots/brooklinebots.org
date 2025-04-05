# PowerShell script for Windows

$TARGET_DIR = "$env:USERPROFILE\Documents\GitHub\brooklinerobotics.org"

# Check if directory exists, otherwise exit
if (!(Test-Path $TARGET_DIR)) {
    Write-Host "Directory 'brooklinerobotics.org' not found. Exiting."
    exit 1
}

# Navigate to the project directory
Set-Location $TARGET_DIR

Write-Host "Cleaning up old build files..."
Remove-Item -Recurse -Force "_site", ".jekyll-cache" -ErrorAction SilentlyContinue

Write-Host "Updating repository..."
git pull

Write-Host "Ensure Ruby 3.4.1 is installed and active."

Write-Host "Installing Ruby dependencies..."
bundle install

Write-Host "Installing Bulma via npm..."
npm install bulma

Write-Host "Starting Jekyll server..."
bundle exec jekyll serve --incremental
$JEKYLL_PID = $LASTEXITCODE

# Wait for server startup
Start-Sleep -Seconds 5

Write-Host "Opening site in default browser..."
Start-Process "http://127.0.0.1:4000/"

Write-Host "Done! Press any key to exit and stop Jekyll."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# Kill Jekyll when terminal session ends
Write-Host "Stopping Jekyll server..."
Stop-Process -Id $JEKYLL_PID -Force
