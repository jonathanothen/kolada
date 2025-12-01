# Kolada AI - Start/Restart Script
# Kor med: .\start.ps1

$AppName = "Kolada AI"
$Port = 3000
$ProjectPath = $PSScriptRoot

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  $AppName - Start Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Funktion for att hitta och stoppa processer pa porten
function Stop-ProcessOnPort {
    param([int]$Port)
    
    $connections = Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue
    if ($connections) {
        $pids = $connections | Select-Object -ExpandProperty OwningProcess -Unique
        foreach ($processId in $pids) {
            Write-Host "Stoppar process PID: $processId" -ForegroundColor Yellow
            try {
                Stop-Process -Id $processId -Force -ErrorAction Stop
            } catch {
                Write-Host "Varning: Kunde inte stoppa PID $processId" -ForegroundColor DarkYellow
            }
        }
        Start-Sleep -Seconds 2
        return $true
    }
    return $false
}

# Stoppa eventuella processer pa port 3000
$stopped = Stop-ProcessOnPort -Port $Port
if ($stopped) {
    Write-Host "Befintliga processer stoppade!" -ForegroundColor Green
} else {
    Write-Host "Ingen befintlig process pa port $Port" -ForegroundColor Green
}

# Vanta lite extra for att sakerst alla socket ar frigjorda
Start-Sleep -Seconds 1

# Starta appen
Write-Host ""
Write-Host "Startar $AppName..." -ForegroundColor Cyan
Write-Host "Lokal URL: http://localhost:$Port" -ForegroundColor White
Write-Host "Publik URL: http://185.157.161.43:$Port" -ForegroundColor Green
Write-Host ""
Write-Host "Tryck Ctrl+C for att stoppa servern" -ForegroundColor DarkGray
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Byt till projektmappen och starta
Set-Location $ProjectPath
npm run dev
