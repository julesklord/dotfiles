param (
    [string[]]$Repos = @("askgem.py", "ducer-cli", "poshbuddy", "pacwin", "Chorderizer"),
    [switch]$RunCI = $false
)

$baseDir = "G:\DEVELOPMENT"
$report = @()

Write-Host "`n🛡️  INICIANDO AUDITORÃA DEL GUARDIÃN" -ForegroundColor Cyan -Style Bold
Write-Host "======================================" -ForegroundColor Gray

foreach ($repoName in $Repos) {
    $repoPath = Join-Path $baseDir $repoName
    if (-not (Test-Path $repoPath)) { continue }

    Write-Host "`n[ ] Analizando $repoName..." -ForegroundColor Yellow
    Set-Location $repoPath

    # 1. Git Status
    $dirty = if (git status --porcelain) { "MODIFIED" } else { "CLEAN" }
    
    # 2. Secret Scan (Gitleaks)
    Write-Host "   âœ¨ Escaneando secretos..." -NoNewline
    $leaks = gitleaks detect --source . --quiet --no-git 2>$null
    $secretStatus = if ($LASTEXITCODE -eq 0) { "SAFE" } else { "RISK FOUND" }
    Write-Host " $secretStatus" -ForegroundColor $(if($secretStatus -eq "SAFE"){"Green"}else{"Red"})

    # 3. Dependency Audit
    Write-Host "   📦 Auditiando dependencias..." -NoNewline
    $auditStatus = "N/A"
    if (Test-Path "pyproject.toml" -or Test-Path "requirements.txt") {
        # Usar el venv de Chorderizer para el audit por simplicidad si no hay local
        $python = if(Test-Path ".venv\Scripts\python.exe") { ".venv\Scripts\python.exe" } else { "G:\DEVELOPMENT\Chorderizer\.venv\Scripts\python.exe" }
        & $python -m pip_audit . --quiet 2>$null
        $auditStatus = if ($LASTEXITCODE -eq 0) { "OK" } else { "VULNERABLE" }
    } elseif (Test-Path "package.json") {
        npm audit --audit-level=high 2>$null
        $auditStatus = if ($LASTEXITCODE -eq 0) { "OK" } else { "VULNERABLE" }
    }
    Write-Host " $auditStatus" -ForegroundColor $(if($auditStatus -eq "OK"){"Green"}else{"Red"})

    # 4. Local CI (Act)
    $ciStatus = "SKIPPED"
    if ($RunCI -and (Test-Path ".github\workflows")) {
        Write-Host "   ⚙️ Corriendo Local CI (Act)..." -NoNewline
        act -j build --quiet 2>$null
        $ciStatus = if ($LASTEXITCODE -eq 0) { "PASSED" } else { "FAILED" }
        Write-Host " $ciStatus" -ForegroundColor $(if($ciStatus -eq "PASSED"){"Green"}else{"Red"})
    }

    $report += [PSCustomObject]@{
        Repo     = $repoName
        Git      = $dirty
        Secrets  = $secretStatus
        Deps     = $auditStatus
        LocalCI  = $ciStatus
    }
}

Write-Host "`n📊 RESUMEN FINAL" -ForegroundColor Cyan -Style Bold
$report | Format-Table -AutoSize
Set-Location $baseDir
