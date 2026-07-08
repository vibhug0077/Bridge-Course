param(
    [Parameter(Mandatory = $true)]
    [string]$SourceFile
)

$compiler = Get-Command gcc -ErrorAction SilentlyContinue

if (-not $compiler) {
    $compiler = Get-Command clang -ErrorAction SilentlyContinue
}

$compilerPath = $null

if ($compiler) {
    $compilerPath = $compiler.Source
}

if (-not $compilerPath -and (Test-Path "C:\msys64\ucrt64\bin\gcc.exe")) {
    $compilerPath = "C:\msys64\ucrt64\bin\gcc.exe"
    $env:Path = "C:\msys64\ucrt64\bin;$env:Path"
}

if (-not $compilerPath) {
    Write-Host "No C compiler found on PATH."
    Write-Host "Install MSYS2 GCC, add C:\msys64\ucrt64\bin to PATH, then restart VS Code."
    Write-Host "See README.md in this folder for setup steps."
    exit 1
}

if (-not (Test-Path $SourceFile)) {
    Write-Host "Source file not found: $SourceFile"
    exit 1
}

$sourcePath = Resolve-Path $SourceFile
$outputName = [System.IO.Path]::GetFileNameWithoutExtension($SourceFile) + ".exe"
$outputPath = Join-Path (Get-Location) $outputName

Write-Host "Compiler: $compilerPath"
Write-Host "Compiling $sourcePath"

& $compilerPath -std=c11 -Wall -Wextra $sourcePath -o $outputPath

if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed."
    exit $LASTEXITCODE
}

Write-Host "Running $outputPath"
& $outputPath
