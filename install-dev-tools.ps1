# Install dev software
# Use: 
# Follow instructions on chocolatey.org to install tool
# Open Powershell as admin, go to file location.
# Run: powershell -ExecutionPolicy Bypass -File .\install-dev-tools.ps1

# Issues:
# "forticlientvpn",
# "googlechrome",

$packages = @(
	"git",
	"vscode",
	"visualstudio2022professional",
	"windsurf",
	"nvm"
)

foreach ($pkg in $packages) {
	Write-Host "Installing $pkg ... " -ForegroundColor Cyan
	choco install $pkg -y 
}
