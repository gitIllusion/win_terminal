oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_frappe.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons -Force
Set-PSReadLineOption -PredictionViewStyle ListView
clear
function devssh {
	Invoke-Expression "ssh root@11.151.28.85 -p 21098 -o PasswordAuthentication=yes"
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
