@echo off
setlocal

if "%~1"=="" (
    echo Usage: run_c.cmd source_file.c
    exit /b 1
)

set "SOURCE=%~1"

if not exist "%SOURCE%" (
    echo Source file not found: %SOURCE%
    exit /b 1
)

where gcc >nul 2>nul
if "%ERRORLEVEL%"=="0" (
    set "CC=gcc"
    goto compiler_found
)

where clang >nul 2>nul
if "%ERRORLEVEL%"=="0" (
    set "CC=clang"
    goto compiler_found
)

if exist "C:\msys64\ucrt64\bin\gcc.exe" (
    set "CC=C:\msys64\ucrt64\bin\gcc.exe"
    set "PATH=C:\msys64\ucrt64\bin;%PATH%"
    goto compiler_found
)

echo No C compiler found on PATH.
echo Install MSYS2 GCC, add C:\msys64\ucrt64\bin to PATH, then restart VS Code.
echo See README.md in this folder for setup steps.
exit /b 1

:compiler_found
set "OUTPUT=%~n1.exe"
echo Compiler: %CC%
echo Compiling %SOURCE%

"%CC%" -std=c11 -Wall -Wextra "%SOURCE%" -o "%OUTPUT%"

if errorlevel 1 (
    echo Compilation failed.
    exit /b %ERRORLEVEL%
)

echo Running %OUTPUT%
"%CD%\%OUTPUT%"

endlocal
