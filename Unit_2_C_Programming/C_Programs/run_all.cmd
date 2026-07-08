@echo off
setlocal

for %%F in (*.c) do (
    echo.
    echo ==============================
    echo Running %%F
    echo ==============================
    call "%~dp0run_c.cmd" "%%F"
)

endlocal
