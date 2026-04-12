function gemini { node "C:\Users\julio\.npm-global\node_modules\@google\gemini-cli\bundle\gemini.js" @args }

oh-my-posh init powershell --config 'C:\Users\julio\.poshthemes\atomic.omp.json' | Invoke-Expression
Import-Module Terminal-Icons -ErrorAction SilentlyContinue
Import-Module posh-git -ErrorAction SilentlyContinue
if (Get-Command zoxide -ErrorAction SilentlyContinue) { zoxide init powershell | Invoke-Expression }
Write-Host 'ℹ️ El segmento de Spotify no requiere un módulo extra de PowerShell, pero necesita la API activa.'
Import-Module DockerCompletion -ErrorAction SilentlyContinue
