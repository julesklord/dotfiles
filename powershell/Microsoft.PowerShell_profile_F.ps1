# Global Aliases
function gemini { node "C:\Users\julio\.npm-global\node_modules\@google\gemini-cli\bundle\gemini.js" @args }

# Aliases
Set-Alias -Name ps -Value Get-Process
Set-Alias -Name kill -Value Stop-Process

oh-my-posh init powershell --config 'C:\Users\julio\.poshthemes\atomic.omp.json' | Invoke-Expression

# Modules
Import-Module posh-git -ErrorAction SilentlyContinue
Import-Module Terminal-Icons -ErrorAction SilentlyContinue

# Zoxide Initialization
if (Get-Command zoxide -ErrorAction SilentlyContinue) {
    zoxide init powershell | Out-String | Invoke-Expression
}

# Spotify Info
Write-Host 'ℹ️ El segmento de Spotify no requiere un módulo extra de PowerShell, pero necesita la API activa.'

# Docker
Import-Module DockerCompletion -ErrorAction SilentlyContinue
$env:DOCKER_HOST = "tcp://localhost:2375"

# Git Functions
function gst { git status }
function gpl { git pull }
function gps { git push }
function gco { param([string]$branch) git checkout $branch }
function gcm { param([string]$message) git commit -m "$message" }
function gba { git branch -a }
