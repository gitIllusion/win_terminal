oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_frappe.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons -Force
Set-PSReadLineOption -PredictionViewStyle ListView
clear
function devssh {
	Invoke-Expression "ssh root@255.255.255.255 -p 21098 -o PasswordAuthentication=yes"
}
function Open-Program {
	param (
		[Parameter(Mandatory)]
		[string]$ProgramPath,

		[Parameter(Mandatory)]
		[string]$Command
	)
	if (Test-Path $ProgramPath) {
		Start-Process $ProgramPath -ArgumentList $Command
	} else {
		Write-Error "Программа не существует"
	}
}
function tg {
	Open-Program "C:\Users\root\AppData\Roaming\Telegram Desktop\Telegram.exe" "/n"
}
function fz {
	Open-Program "C:\Program Files\FileZilla FTP Client\filezilla.exe" "/n"
}
function fg {
	Open-Program "C:\Users\root\AppData\Local\Figma\Figma.exe" "/n"
}
function chrome {
	Open-Program "C:\Program Files\Google\Chrome\Application\chrome.exe" "/n"
}
function vs {
	Open-Program "C:\Users\root\AppData\Local\Programs\Microsoft VS Code\Code.exe" "/n"
}
function figma {
	Open-Program "C:\Users\root\AppData\Local\Figma\app-124.5.5\Figma.exe" "/n"
}
function ltree {
    $CurrentDirectoryName = Split-Path -Path (Get-Location) -Leaf
    Write-Host "Directory: $CurrentDirectoryName" -ForegroundColor Cyan
    Get-ChildItem -Directory | ForEach-Object { 
        Write-Host "|--" $_.Name -ForegroundColor Green
    }
    Get-ChildItem -File | ForEach-Object {
        Write-Host "|-" $_.Name
    }
}