# Notebooks

Use these notebooks for interactive practice in VS Code.

Notebooks are meant for experimentation, not passive viewing. Run every cell, change inputs, add new cells, and record observations.

## Python

- [01 Python Basics](Python/01_Python_Basics.ipynb)
- [02 Control Flow and Data Structures](Python/02_Control_Flow_and_Data_Structures.ipynb)
- [03 Data Visualization](Python/03_Data_Visualization.ipynb)

## C++

- [01 C-Style Basics in C++](CPP/01_C_Style_Basics_in_CPP.ipynb)
- [02 Control Flow and Arrays in C++](CPP/02_Control_Flow_and_Arrays_CPP.ipynb)

## Kernels

- Python notebooks use the `python3` kernel.
- C++ notebooks use the `xcpp17` kernel from `xeus-cling`.

## Intensive Notebook Workflow

For each notebook:

1. Run all cells once without changes.
2. Add a markdown cell summarizing the purpose of the notebook.
3. Modify every code example at least once.
4. Add three new practice cells.
5. Add one error intentionally, observe the message, then fix it.
6. Export or save the final notebook with outputs visible.

## Expected Additions

| Notebook | Student Additions |
| --- | --- |
| Python Basics | input conversion, formatted output, type checks |
| Python Control Flow and Data Structures | decision table, menu loop, dictionary/list problem |
| Python Data Visualization | at least three chart types and written interpretations |
| C-Style Basics in C++ | variables, input/output, operators, simple formulas |
| Control Flow and Arrays in C++ | arrays, loops, grade logic, pattern printing |

## Troubleshooting

- If a Python notebook does not run, check the selected kernel.
- If imports fail, check whether the package is installed in the same environment as the kernel.
- If C++ notebooks do not run, confirm that `xeus-cling` and the `xcpp17` kernel are installed.
- Restart the kernel when outputs become confusing or variables from old cells interfere.
