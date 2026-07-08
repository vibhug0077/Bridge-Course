# C Programs from Terminal

Use these files for C practice without Jupyter notebooks.

## Current Machine Status

Diagnostics now show that MSYS2 GCC is available on PATH:

- `gcc` found at `C:\msys64\ucrt64\bin\gcc.exe`
- `gcc --version` reports `gcc.exe (Rev5, Built by MSYS2 project) 16.1.0`

The source files are ready and have been compiled successfully on this machine.
The runner scripts can use `gcc` from PATH or the default MSYS2 location:

```text
C:\msys64\ucrt64\bin\gcc.exe
```

## Recommended Compiler Setup on Windows

Install MSYS2 GCC:

1. Install MSYS2 from https://www.msys2.org/
2. Open **MSYS2 UCRT64** terminal.
3. Run:

```bash
pacman -S mingw-w64-ucrt-x86_64-gcc
```

4. Add this folder to Windows `PATH`:

```text
C:\msys64\ucrt64\bin
```

5. Restart VS Code.
6. Check in PowerShell:

```powershell
gcc --version
```

If you do not update PATH immediately, `run_c.cmd` can still use `C:\msys64\ucrt64\bin\gcc.exe` directly when MSYS2 GCC is installed there.

## Run One Program Manually

From this folder:

```powershell
gcc 01_hello.c -o 01_hello.exe
.\01_hello.exe
```

## Use the Runner Script

From this folder:

```powershell
.\run_c.cmd 01_hello.c
```

Run all programs:

```powershell
.\run_all.cmd
```

PowerShell may block `.ps1` scripts on some systems. The `.cmd` runners are the default because they work without changing execution policy.

## Program List

| File | Topic |
| --- | --- |
| `01_hello.c` | output and program structure |
| `02_variables.c` | variables, data types, and formatted output |
| `03_operators.c` | arithmetic, integer division, and casting |
| `04_simple_interest.c` | formula-based program |
| `05_grade_calculator.c` | input validation and `if else` |
| `06_array_statistics.c` | arrays, loops, highest, lowest, average |
| `07_student_records.c` | structures and arrays of records |
| `run_c.cmd` | compile and run one C file |
| `run_all.cmd` | compile and run every C file |

## Troubleshooting

| Problem | Meaning | Fix |
| --- | --- | --- |
| `gcc is not recognized` | GCC is not installed or not on PATH | install MSYS2 GCC and restart VS Code |
| Program compiles but does not run | executable path issue | use `.\program.exe` in PowerShell |
| Compilation failed | syntax/type error in C code | read the error line and fix the source |
| Output is wrong | logic error | dry-run with small input values |
