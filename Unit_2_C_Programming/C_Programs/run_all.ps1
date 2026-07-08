$sources = Get-ChildItem -Path . -Filter "*.c" | Sort-Object Name

if ($sources.Count -eq 0) {
    Write-Host "No C source files found."
    exit 1
}

foreach ($source in $sources) {
    Write-Host ""
    Write-Host "=============================="
    Write-Host "Running $($source.Name)"
    Write-Host "=============================="
    .\run_c.ps1 $source.Name
}
