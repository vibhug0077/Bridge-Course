# BRIDGE COURSE QUESTION BANK — DETAILED MODEL ANSWERS

**Note:** These are model answers. Equivalent programs and logically correct alternative approaches should also be accepted.

* * *

# SECTION A: BASIC PYTHON, PANDAS AND VISUALIZATION

## Answer 1: Python Variables and Data Types

### a) Variable and identifier

A **variable** is a named memory location used to store a value.

```python
age = 21
name = "Aman"
```

Here, `age` and `name` are variables.

An **identifier** is the name given to a variable, function, class or other object in a program.

Rules for identifiers:

1.  An identifier may contain letters, digits and underscores.
    
2.  It cannot begin with a digit.
    
3.  It cannot contain spaces or special symbols such as `@`, `#` or `%`.
    
4.  Python keywords such as `if`, `for` and `class` cannot be used as identifiers.
    
5.  Identifiers are case-sensitive. Therefore, `marks` and `Marks` are different.
    

Valid identifiers:

```python
student_name
marks1
total_marks
```

Invalid identifiers:

```python
1marks
student name
class
```

### b) Python data types

**Integer:** Stores whole numbers.

```python
age = 21
```

**Float:** Stores decimal numbers.

```python
percentage = 82.5
```

**String:** Stores textual data.

```python
name = "Riya"
```

**Boolean:** Stores either `True` or `False`.

```python
is_passed = True
```

**Complex:** Stores a real and imaginary component.

```python
number = 3 + 4j
```

### c) Program

```python
name = input("Enter student name: ")
age = int(input("Enter student age: "))
percentage = float(input("Enter percentage: "))

print("\nStudent Details")
print("Name:", name)
print("Age:", age)
print("Percentage:", percentage)

print("\nData Types")
print("Type of name:", type(name))
print("Type of age:", type(age))
print("Type of percentage:", type(percentage))
```

Sample output:

```text
Enter student name: Aman
Enter student age: 21
Enter percentage: 84.5

Student Details
Name: Aman
Age: 21
Percentage: 84.5

Data Types
Type of name: <class 'str'>
Type of age: <class 'int'>
Type of percentage: <class 'float'>
```

* * *

## Answer 2: Input, Output and Type Conversion

### a) `input()` and `print()`

The `input()` function accepts data from the user.

```python
name = input("Enter your name: ")
```

The value returned by `input()` is normally a string.

The `print()` function displays information on the screen.

```python
print("Welcome", name)
```

### b) Implicit and explicit conversion

**Implicit conversion** is performed automatically by Python.

```python
a = 10
b = 2.5
result = a + b

print(result)
print(type(result))
```

Python automatically converts `a` from integer to float.

**Explicit conversion** is performed manually using functions such as `int()`, `float()` and `str()`.

```python
age_text = "21"
age = int(age_text)

print(age)
print(type(age))
```

### c) Rectangle program

```python
length = float(input("Enter the length of the rectangle: "))
breadth = float(input("Enter the breadth of the rectangle: "))

area = length * breadth
perimeter = 2 * (length + breadth)

print("Area of rectangle:", area)
print("Perimeter of rectangle:", perimeter)
```

Sample output:

```text
Enter the length of the rectangle: 10
Enter the breadth of the rectangle: 5
Area of rectangle: 50.0
Perimeter of rectangle: 30.0
```

* * *

## Answer 3: Python Operators

### a) Types of operators

**Arithmetic operators** perform mathematical operations.

```python
a + b
a - b
a * b
a / b
```

**Comparison operators** compare two values and return `True` or `False`.

```python
a > b
a == b
a != b
```

**Logical operators** combine conditions.

```python
age >= 18 and age <= 60
marks >= 40 or sports_quota
not is_absent
```

### b) Difference between operators

`/` performs normal division.

```python
7 / 2
# 3.5
```

`//` performs floor division.

```python
7 // 2
# 3
```

`%` returns the remainder.

```python
7 % 2
# 1
```

`**` calculates a power.

```python
2 ** 3
# 8
```

### c) Program

```python
number1 = float(input("Enter the first number: "))
number2 = float(input("Enter the second number: "))

print("Sum:", number1 + number2)
print("Difference:", number1 - number2)
print("Product:", number1 * number2)

if number2 != 0:
    print("Quotient:", number1 / number2)
    print("Remainder:", number1 % number2)
else:
    print("Division and remainder are not possible because the second number is zero.")
```

* * *

## Answer 4: Conditional Statements

### a) Syntax

**Simple `if`:**

```python
if condition:
    statement
```

**`if-else`:**

```python
if condition:
    statement1
else:
    statement2
```

**`if-elif-else`:**

```python
if condition1:
    statement1
elif condition2:
    statement2
else:
    statement3
```

### b) Positive, negative or zero

```python
number = float(input("Enter a number: "))

if number > 0:
    print("The number is positive.")
elif number < 0:
    print("The number is negative.")
else:
    print("The number is zero.")
```

### c) Pass condition

```python
marks = float(input("Enter marks: "))
attendance = float(input("Enter attendance percentage: "))

if marks >= 40 and attendance >= 75:
    print("Result: Pass")
else:
    print("Result: Fail")
```

A student must satisfy both conditions to pass.

* * *

## Answer 5: Grade Calculator

```python
marks = float(input("Enter marks between 0 and 100: "))

if marks < 0 or marks > 100:
    print("Invalid marks. Marks must be between 0 and 100.")

elif marks >= 90:
    grade = "A"
    result = "Pass"
    print("Marks:", marks)
    print("Grade:", grade)
    print("Result:", result)

elif marks >= 75:
    grade = "B"
    result = "Pass"
    print("Marks:", marks)
    print("Grade:", grade)
    print("Result:", result)

elif marks >= 60:
    grade = "C"
    result = "Pass"
    print("Marks:", marks)
    print("Grade:", grade)
    print("Result:", result)

elif marks >= 40:
    grade = "D"
    result = "Pass"
    print("Marks:", marks)
    print("Grade:", grade)
    print("Result:", result)

else:
    grade = "F"
    result = "Fail"
    print("Marks:", marks)
    print("Grade:", grade)
    print("Result:", result)
```

A shorter implementation is:

```python
marks = float(input("Enter marks between 0 and 100: "))

if not 0 <= marks <= 100:
    print("Invalid marks.")
else:
    if marks >= 90:
        grade = "A"
    elif marks >= 75:
        grade = "B"
    elif marks >= 60:
        grade = "C"
    elif marks >= 40:
        grade = "D"
    else:
        grade = "F"

    result = "Pass" if marks >= 40 else "Fail"

    print(f"Marks: {marks}")
    print(f"Grade: {grade}")
    print(f"Result: {result}")
```

* * *

## Answer 6: Largest Number and Leap Year

### a) Largest of three numbers

```python
a = float(input("Enter the first number: "))
b = float(input("Enter the second number: "))
c = float(input("Enter the third number: "))

if a >= b and a >= c:
    largest = a
elif b >= a and b >= c:
    largest = b
else:
    largest = c

print("Largest number:", largest)
```

### b) Leap year

A year is a leap year when:

- It is divisible by 400, or
    
- It is divisible by 4 but not divisible by 100.
    

```python
year = int(input("Enter a year: "))

if year % 400 == 0:
    print(year, "is a leap year.")
elif year % 4 == 0 and year % 100 != 0:
    print(year, "is a leap year.")
else:
    print(year, "is not a leap year.")
```

### c) Test cases

Largest-number program:

```text
Input: 10, 25, 15
Output: 25
```

```text
Input: 40, 40, 20
Output: 40
```

Leap-year program:

```text
Input: 2024
Output: Leap year
```

```text
Input: 1900
Output: Not a leap year
```

* * *

## Answer 7: For Loop

### a) Purpose

A `for` loop repeats a block of code for every value in a sequence.

The `range()` function generates a sequence of integers.

```python
for number in range(1, 6):
    print(number)
```

Output:

```text
1
2
3
4
5
```

### b) Even numbers from 1 to 100

```python
for number in range(2, 101, 2):
    print(number)
```

Alternative:

```python
for number in range(1, 101):
    if number % 2 == 0:
        print(number)
```

### c) Sum of first `n` natural numbers

```python
n = int(input("Enter a positive integer: "))

total = 0

for number in range(1, n + 1):
    total = total + number

print("Sum of first", n, "natural numbers:", total)
```

For `n = 5`:

\[  
1+2+3+4+5=15  
\]

* * *

## Answer 8: While Loop

### a) Working of a while loop

A `while` loop repeats while its condition remains true.

```python
count = 1

while count <= 5:
    print(count)
    count += 1
```

The variable must be updated. Otherwise, the loop may run forever.

### b) Multiplication table

```python
number = int(input("Enter a number: "))

counter = 1

while counter <= 10:
    print(number, "x", counter, "=", number * counter)
    counter += 1
```

### c) Reverse an integer

```python
number = int(input("Enter a positive integer: "))

original_number = number
reverse = 0

while number > 0:
    digit = number % 10
    reverse = reverse * 10 + digit
    number = number // 10

print("Original number:", original_number)
print("Reversed number:", reverse)
```

For `1234`:

```text
Reversed number: 4321
```

* * *

## Answer 9: Loop-Control Statements

### a) `break`, `continue` and `pass`

`break` immediately terminates the loop.

```python
for number in range(1, 10):
    if number == 5:
        break
    print(number)
```

`continue` skips the current iteration.

```python
for number in range(1, 6):
    if number == 3:
        continue
    print(number)
```

`pass` performs no action. It is used as a placeholder.

```python
if marks >= 40:
    pass
```

### b) Skip multiples of 3

```python
for number in range(1, 21):
    if number % 3 == 0:
        continue

    print(number)
```

### c) Sum until zero

```python
total = 0

while True:
    number = float(input("Enter a number, or 0 to stop: "))

    if number == 0:
        break

    total += number

print("Sum of entered numbers:", total)
```

* * *

## Answer 10: Nested Loops and Patterns

### a) Nested loop

A loop written inside another loop is called a nested loop.

```python
for row in range(3):
    for column in range(2):
        print(row, column)
```

### b) Star pattern

```python
for row in range(1, 6):
    for column in range(row):
        print("*", end="")
    print()
```

Output:

```text
*
**
***
****
*****
```

A shorter version:

```python
for row in range(1, 6):
    print("*" * row)
```

### c) Number pattern

```python
for row in range(1, 6):
    for number in range(1, row + 1):
        print(number, end="")
    print()
```

Output:

```text
1
12
123
1234
12345
```

* * *

## Answer 11: String Fundamentals

### a) Indexing and slicing

Each character in a string has a position.

```python
text = "Python"
```

Positive indexing:

```text
P  y  t  h  o  n
0  1  2  3  4  5
```

Negative indexing:

```text
P   y   t   h   o   n
-6 -5  -4  -3  -2  -1
```

Examples:

```python
print(text[0])       # P
print(text[-1])      # n
print(text[0:3])     # Pyt
print(text[2:])      # thon
print(text[::-1])    # nohtyP
```

### b) Change case

```python
text = input("Enter a sentence: ")

print("Uppercase:", text.upper())
print("Lowercase:", text.lower())
print("Title case:", text.title())
```

### c) Count vowels, consonants, digits and spaces

```python
text = input("Enter a string: ")

vowels = 0
consonants = 0
digits = 0
spaces = 0

for character in text:
    if character.lower() in "aeiou":
        vowels += 1
    elif character.isalpha():
        consonants += 1
    elif character.isdigit():
        digits += 1
    elif character.isspace():
        spaces += 1

print("Vowels:", vowels)
print("Consonants:", consonants)
print("Digits:", digits)
print("Spaces:", spaces)
```

* * *

## Answer 12: String Operations

### a) Five string methods

`upper()` converts a string to uppercase.

```python
"python".upper()
```

`lower()` converts a string to lowercase.

```python
"PYTHON".lower()
```

`strip()` removes spaces from both ends.

```python
"  Python  ".strip()
```

`replace()` replaces part of a string.

```python
"Python Programming".replace("Python", "C")
```

`split()` breaks a string into a list.

```python
"Python Data Science".split()
```

Additional methods include `find()`, `count()`, `startswith()` and `endswith()`.

### b) Palindrome program

A palindrome reads the same forward and backward.

```python
word = input("Enter a word: ")

clean_word = word.lower().replace(" ", "")

if clean_word == clean_word[::-1]:
    print("The word is a palindrome.")
else:
    print("The word is not a palindrome.")
```

### c) Character frequency

```python
text = input("Enter a string: ")

frequency = {}

for character in text:
    if character in frequency:
        frequency[character] += 1
    else:
        frequency[character] = 1

for character, count in frequency.items():
    print(repr(character), "appears", count, "time(s)")
```

* * *

## Answer 13: Python Lists

### a) List definition

A list is an ordered and mutable collection that can store multiple values.

```python
marks = [65, 72, 80, 91, 76]
```

Indexing:

```python
marks[0]
```

Negative indexing:

```python
marks[-1]
```

Slicing:

```python
marks[1:4]
```

### b) List methods

`append()` adds one value at the end.

```python
marks.append(88)
```

`extend()` adds multiple values.

```python
marks.extend([84, 79])
```

`insert()` adds a value at a specified position.

```python
marks.insert(1, 70)
```

`remove()` removes the first matching value.

```python
marks.remove(70)
```

`pop()` removes and returns a value by position.

```python
removed_value = marks.pop(0)
```

### c) List calculations

```python
numbers = [12, 25, 8, 40, 17, 33, 21, 9, 50, 14]

total = sum(numbers)
average = total / len(numbers)
minimum = min(numbers)
maximum = max(numbers)

print("Numbers:", numbers)
print("Sum:", total)
print("Average:", average)
print("Minimum:", minimum)
print("Maximum:", maximum)
```

* * *

## Answer 14: List Processing

### a) Separate even and odd values

```python
numbers = [12, 7, 5, 18, 20, 11, 16, 9]

even_numbers = []
odd_numbers = []

for number in numbers:
    if number % 2 == 0:
        even_numbers.append(number)
    else:
        odd_numbers.append(number)

print("Even numbers:", even_numbers)
print("Odd numbers:", odd_numbers)
```

### b) Remove duplicates

```python
numbers = [10, 20, 10, 30, 20, 40, 30]

unique_numbers = []

for number in numbers:
    if number not in unique_numbers:
        unique_numbers.append(number)

print("Original list:", numbers)
print("List without duplicates:", unique_numbers)
```

Using a set:

```python
unique_numbers = list(set(numbers))
```

The set-based approach may not preserve the original order.

### c) Second-largest number without sorting

```python
numbers = [12, 45, 30, 45, 18, 40]

unique_numbers = list(set(numbers))

if len(unique_numbers) < 2:
    print("A second-largest number does not exist.")
else:
    largest = max(unique_numbers)
    unique_numbers.remove(largest)
    second_largest = max(unique_numbers)

    print("Largest:", largest)
    print("Second largest:", second_largest)
```

* * *

## Answer 15: Tuples

### a) Tuple and list difference

A tuple is an ordered collection that cannot be modified after creation.

```python
student = ("Aman", 21, 82)
```

Differences:

| List | Tuple |
| --- | --- |
| Uses square brackets | Uses parentheses |
| Mutable | Immutable |
| Values can be added or removed | Values cannot normally be changed |
| Suitable for changing data | Suitable for fixed data |

### b) Packing and unpacking

Tuple packing:

```python
student = "Aman", 21, 82
```

Tuple unpacking:

```python
name, age, marks = student

print(name)
print(age)
print(marks)
```

### c) Search and count

```python
students = ("Aman", "Riya", "Karan", "Aman", "Neha", "Aman")

search_name = input("Enter a student name: ")

if search_name in students:
    print(search_name, "is present in the tuple.")
    print("Number of occurrences:", students.count(search_name))
else:
    print(search_name, "is not present.")
```

* * *

## Answer 16: Sets

### a) Definition and characteristics

A set is an unordered collection of unique elements.

```python
subjects = {"Python", "C", "R"}
```

Characteristics:

1.  Duplicate values are automatically removed.
    
2.  Sets are unordered.
    
3.  Sets are mutable, but their elements must be immutable.
    
4.  Sets support mathematical operations such as union and intersection.
    

### b) Set operations

```python
A = {1, 2, 3, 4}
B = {3, 4, 5, 6}
```

Union:

```python
A | B
# {1, 2, 3, 4, 5, 6}
```

Intersection:

```python
A & B
# {3, 4}
```

Difference:

```python
A - B
# {1, 2}
```

Symmetric difference:

```python
A ^ B
# {1, 2, 5, 6}
```

### c) Common subjects

```python
group1 = {"Python", "C", "Mathematics", "Excel"}
group2 = {"Python", "R", "Excel", "Statistics"}

common_subjects = group1.intersection(group2)

print("Common subjects:", common_subjects)
```

Output:

```text
Common subjects: {'Python', 'Excel'}
```

* * *

## Answer 17: Dictionaries

### a) Dictionary definition

A dictionary stores information in key-value pairs.

```python
student = {
    "name": "Aman",
    "marks": 82
}
```

Here, `name` and `marks` are keys. `"Aman"` and `82` are values.

Keys must be unique.

### b) Dictionary methods

`keys()` returns all keys.

```python
student.keys()
```

`values()` returns all values.

```python
student.values()
```

`items()` returns key-value pairs.

```python
student.items()
```

`get()` safely retrieves a value.

```python
student.get("marks")
```

`update()` adds or modifies entries.

```python
student.update({"age": 21})
```

### c) Student marks

```python
student_marks = {
    "Aman": 78,
    "Riya": 92,
    "Karan": 67,
    "Neha": 85,
    "Arjun": 74
}

highest_student = max(student_marks, key=student_marks.get)
highest_marks = student_marks[highest_student]

average_marks = sum(student_marks.values()) / len(student_marks)

print("Student with highest marks:", highest_student)
print("Highest marks:", highest_marks)
print("Class average:", round(average_marks, 2))
```

* * *

## Answer 18: Nested Dictionaries

```python
students = {
    101: {
        "name": "Aman",
        "roll_number": 101,
        "python_marks": 82,
        "attendance": 88
    },
    102: {
        "name": "Riya",
        "roll_number": 102,
        "python_marks": 91,
        "attendance": 94
    },
    103: {
        "name": "Karan",
        "roll_number": 103,
        "python_marks": 37,
        "attendance": 70
    },
    104: {
        "name": "Neha",
        "roll_number": 104,
        "python_marks": 76,
        "attendance": 86
    },
    105: {
        "name": "Arjun",
        "roll_number": 105,
        "python_marks": 55,
        "attendance": 78
    }
}
```

### a) Display the complete dictionary

```python
for student_id, details in students.items():
    print("Student ID:", student_id)

    for key, value in details.items():
        print(key, ":", value)

    print()
```

### b) Students scoring above 75

```python
print("Students scoring above 75:")

for details in students.values():
    if details["python_marks"] > 75:
        print(details["name"], "-", details["python_marks"])
```

### c) Add result

```python
for details in students.values():
    if details["python_marks"] >= 40:
        details["result"] = "Pass"
    else:
        details["result"] = "Fail"

for student_id, details in students.items():
    print(student_id, details)
```

* * *

## Answer 19: Python Functions

### a) Function definition and advantages

A function is a reusable block of code that performs a particular task.

```python
def greet():
    print("Welcome")
```

Advantages:

1.  Reduces repeated code.
    
2.  Makes the program easier to understand.
    
3.  Simplifies testing and debugging.
    
4.  Divides a large problem into smaller parts.
    
5.  Improves code reuse.
    

### b) Parameters and arguments

A **parameter** is a variable written in the function definition.

```python
def greet(name):
    print("Hello", name)
```

`name` is a parameter.

An **argument** is the actual value passed during the function call.

```python
greet("Aman")
```

`"Aman"` is an argument.

### c) Menu-driven area program

```python
import math


def area_circle(radius):
    return math.pi * radius * radius


def area_rectangle(length, breadth):
    return length * breadth


def area_triangle(base, height):
    return 0.5 * base * height


print("1. Area of Circle")
print("2. Area of Rectangle")
print("3. Area of Triangle")

choice = int(input("Enter your choice: "))

if choice == 1:
    radius = float(input("Enter radius: "))
    print("Area:", round(area_circle(radius), 2))

elif choice == 2:
    length = float(input("Enter length: "))
    breadth = float(input("Enter breadth: "))
    print("Area:", area_rectangle(length, breadth))

elif choice == 3:
    base = float(input("Enter base: "))
    height = float(input("Enter height: "))
    print("Area:", area_triangle(base, height))

else:
    print("Invalid choice.")
```

* * *

## Answer 20: Function Arguments and Return Values

### a) Types of arguments

**Positional arguments** are matched according to their position.

```python
def display(name, age):
    print(name, age)

display("Aman", 21)
```

**Keyword arguments** are passed using parameter names.

```python
display(age=21, name="Aman")
```

**Default arguments** use a predefined value when an argument is omitted.

```python
def greet(name, message="Welcome"):
    print(message, name)

greet("Aman")
greet("Riya", "Good morning")
```

### b) `return` statement

The `return` statement sends a result back to the place where the function was called.

```python
def add(a, b):
    return a + b

answer = add(10, 20)
```

Unlike `print()`, `return` allows the result to be stored and used later.

### c) Marks function

```python
def calculate_statistics(marks):
    total = sum(marks)
    average = total / len(marks)
    highest = max(marks)
    lowest = min(marks)

    return total, average, highest, lowest


student_marks = [65, 72, 80, 91, 76]

total, average, highest, lowest = calculate_statistics(student_marks)

print("Total:", total)
print("Average:", round(average, 2))
print("Highest:", highest)
print("Lowest:", lowest)
```

* * *

## Answer 21: Recursion and Lambda Functions

### a) Recursion

Recursion occurs when a function calls itself.

A recursive function must have a **base condition** that stops further function calls.

Without a base condition, recursion may continue until Python raises an error.

### b) Recursive factorial

The factorial of `n` is:

\[  
n! = n \\times (n-1)\\times(n-2)\\times\\cdots\\times1  
\]

```python
def factorial(number):
    if number == 0 or number == 1:
        return 1

    return number * factorial(number - 1)


n = int(input("Enter a non-negative integer: "))

if n < 0:
    print("Factorial is not defined for negative numbers.")
else:
    print("Factorial:", factorial(n))
```

For `5`:

\[  
5!=5\\times4\\times3\\times2\\times1=120  
\]

### c) Lambda functions

```python
square = lambda number: number ** 2
cube = lambda number: number ** 3

value = float(input("Enter a number: "))

print("Square:", square(value))
print("Cube:", cube(value))
```

A lambda is a small anonymous function normally written in one line.

* * *

## Answer 22: File Handling

### a) File modes

`r` opens a file for reading. The file must already exist.

`w` opens a file for writing. It creates a new file or replaces existing content.

`a` opens a file for appending. New data is added at the end.

`x` creates a new file. An error occurs when the file already exists.

### b) Create and write to a file

```python
languages = [
    "Python",
    "C",
    "R",
    "Java",
    "JavaScript"
]

with open("languages.txt", "w", encoding="utf-8") as file:
    for language in languages:
        file.write(language + "\n")

print("File created successfully.")
```

The `with` statement automatically closes the file.

### c) Read file and count lines

```python
line_count = 0

with open("languages.txt", "r", encoding="utf-8") as file:
    for line in file:
        print(line.strip())
        line_count += 1

print("Total number of lines:", line_count)
```

* * *

## Answer 23: Exception Handling

### a) Exception and keywords

An **exception** is an error that occurs while the program is running.

Examples include division by zero, invalid input and missing files.

`try` contains code that may cause an exception.

`except` handles the exception.

`else` runs when no exception occurs.

`finally` runs whether an exception occurs or not.

```python
try:
    number = int(input("Enter a number: "))
except ValueError:
    print("Invalid input.")
else:
    print("Valid number:", number)
finally:
    print("Program completed.")
```

### b) and c) Division with error handling

```python
try:
    number1 = float(input("Enter the first number: "))
    number2 = float(input("Enter the second number: "))

    result = number1 / number2

except ValueError:
    print("Invalid input. Please enter numeric values.")

except ZeroDivisionError:
    print("Division by zero is not permitted.")

else:
    print("Result:", result)

finally:
    print("Division operation completed.")
```

* * *

## Answer 24: Classes and Objects

### a) Definitions

A **class** is a blueprint used to create objects.

An **object** is an instance of a class.

An **attribute** stores information about an object.

A **method** is a function defined inside a class.

### b) `__init__()` and `self`

The `__init__()` method is automatically called when an object is created. It initializes object attributes.

`self` refers to the current object.

```python
class Student:
    def __init__(self, name):
        self.name = name
```

### c) Student class

```python
class Student:
    def __init__(self, name, roll_number, marks):
        self.name = name
        self.roll_number = roll_number
        self.marks = marks

    def display_details(self):
        print("Name:", self.name)
        print("Roll number:", self.roll_number)
        print("Marks:", self.marks)

    def display_result(self):
        if self.marks >= 40:
            print("Result: Pass")
        else:
            print("Result: Fail")


student1 = Student("Aman", 101, 82)

student1.display_details()
student1.display_result()
```

* * *

## Answer 25: Inheritance

### a) Definition and advantages

Inheritance allows one class to acquire attributes and methods from another class.

Advantages:

1.  Promotes code reuse.
    
2.  Reduces duplication.
    
3.  Supports logical classification.
    
4.  Makes programs easier to extend.
    

### b) Parent and child class

A **parent class** provides common properties and methods.

A **child class** inherits those properties and may add its own features.

### c) Program

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age


class Student(Person):
    def __init__(self, name, age, roll_number, marks):
        super().__init__(name, age)
        self.roll_number = roll_number
        self.marks = marks

    def display_details(self):
        print("Name:", self.name)
        print("Age:", self.age)
        print("Roll number:", self.roll_number)
        print("Marks:", self.marks)


student1 = Student("Riya", 20, 102, 91)
student1.display_details()
```

`super().__init__()` calls the constructor of the parent class.

* * *

## Answer 26: NumPy Arrays

### a) Definition and differences

A NumPy array is a collection of values stored in an efficient multidimensional structure.

```python
import numpy as np

numbers = np.array([10, 20, 30])
```

Differences:

| Python list | NumPy array |
| --- | --- |
| May contain mixed data types | Normally contains one data type |
| Slower for large numerical calculations | Faster for numerical calculations |
| Does not directly support vector operations | Supports vectorized operations |
| Part of core Python | Requires NumPy |

### b) Array properties

```python
import numpy as np

numbers = np.array([12, 25, 8, 40, 17, 33, 21, 9, 50, 14])

print("Array:", numbers)
print("Shape:", numbers.shape)
print("Size:", numbers.size)
print("Data type:", numbers.dtype)
```

### c) Calculations and filtering

```python
total = numbers.sum()
average = numbers.mean()
minimum = numbers.min()
maximum = numbers.max()

above_average = numbers[numbers > average]

print("Sum:", total)
print("Mean:", average)
print("Minimum:", minimum)
print("Maximum:", maximum)
print("Values above mean:", above_average)
```

* * *

## Answer 27: Pandas Series and DataFrame

### a) Difference

A Pandas **Series** is a one-dimensional labelled collection.

```python
marks = pd.Series([65, 72, 80])
```

A Pandas **DataFrame** is a two-dimensional table containing rows and columns.

```python
students = pd.DataFrame({
    "name": ["Aman", "Riya"],
    "marks": [65, 92]
})
```

### b) Series

```python
import pandas as pd

marks = pd.Series(
    [78, 92, 67, 85, 74],
    index=["Aman", "Riya", "Karan", "Neha", "Arjun"]
)

print(marks)
```

### c) DataFrame

```python
students = pd.DataFrame({
    "Student": [
        "Aman", "Riya", "Karan",
        "Neha", "Arjun", "Pooja"
    ],
    "Department": [
        "CSE", "CSE", "ECE",
        "ECE", "CSE", "ECE"
    ],
    "Python_Marks": [
        78, 92, 67, 85, 74, 88
    ],
    "Attendance": [
        85, 96, 75, 90, 70, 94
    ]
})

print("First three rows:")
print(students.head(3))

print("\nLast two rows:")
print(students.tail(2))
```

* * *

## Answer 28: DataFrame Inspection and Filtering

### a) Commands

`head()` displays the first five rows.

`tail()` displays the last five rows.

`shape` returns the number of rows and columns.

`columns` displays column names.

`dtypes` displays the data type of each column.

`info()` displays columns, data types, non-null counts and memory information.

`describe()` displays summary statistics of numerical columns.

### Example DataFrame

```python
import pandas as pd

students = pd.DataFrame({
    "Name": ["Aman", "Riya", "Karan", "Neha", "Arjun"],
    "Marks": [78, 92, 67, 85, 74],
    "Attendance": [85, 96, 75, 90, 70]
})
```

```python
print(students.head())
print(students.tail())
print(students.shape)
print(students.columns)
print(students.dtypes)
students.info()
print(students.describe())
```

### b) Marks greater than 70

```python
result = students[students["Marks"] > 70]
print(result)
```

### c) Multiple conditions and sorting

```python
result = students[
    (students["Marks"] > 70) &
    (students["Attendance"] >= 75)
].sort_values(
    by="Marks",
    ascending=False
)

print(result)
```

* * *

## Answer 29: Data Cleaning and Grouping

### a) Commands

`isna()` identifies missing values.

```python
students.isna()
```

`dropna()` removes rows or columns containing missing values.

```python
students.dropna()
```

`fillna()` replaces missing values.

```python
students["Marks"].fillna(0)
```

`drop_duplicates()` removes duplicate rows.

```python
students.drop_duplicates()
```

### Example data

```python
import pandas as pd
import numpy as np

students = pd.DataFrame({
    "Name": [
        "Aman", "Riya", "Karan",
        "Neha", "Arjun", "Aman"
    ],
    "Department": [
        "CSE", "CSE", "ECE",
        "ECE", "CSE", "CSE"
    ],
    "Marks": [
        78, 92, np.nan,
        85, 74, 78
    ]
})
```

### b) Fill missing marks with median

```python
median_marks = students["Marks"].median()

students["Marks"] = students["Marks"].fillna(median_marks)

print(students)
```

### c) Group by department

```python
department_summary = (
    students
    .groupby("Department", as_index=False)
    .agg(
        Number_of_Students=("Name", "count"),
        Average_Marks=("Marks", "mean"),
        Highest_Marks=("Marks", "max")
    )
)

department_summary["Average_Marks"] = (
    department_summary["Average_Marks"].round(2)
)

print(department_summary)
```

Duplicates may first be removed using:

```python
students = students.drop_duplicates()
```

* * *

## Answer 30: Data Visualization and EDA

### Create the DataFrame

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px

students = pd.DataFrame({
    "Student": [
        "Aman", "Riya", "Karan", "Neha",
        "Arjun", "Pooja", "Rahul", "Simran"
    ],
    "Department": [
        "CSE", "CSE", "ECE", "ECE",
        "CSE", "ECE", "CSE", "ECE"
    ],
    "Attendance": [
        85, 96, 75, 90,
        70, 94, 78, 88
    ],
    "Study_Hours": [
        4.5, 7.0, 3.0, 6.0,
        3.5, 6.5, 4.0, 5.5
    ],
    "Marks": [
        78, 95, 67, 85,
        72, 91, 74, 82
    ]
})
```

### a) Descriptive statistics

```python
print("Mean:", students["Marks"].mean())
print("Median:", students["Marks"].median())
print("Mode:", students["Marks"].mode().tolist())
print("Standard deviation:", students["Marks"].std())
```

### b) Histogram

```python
sns.histplot(
    data=students,
    x="Marks",
    bins=5,
    kde=True
)

plt.title("Distribution of Student Marks")
plt.xlabel("Marks")
plt.ylabel("Frequency")
plt.show()
```

Box plot:

```python
sns.boxplot(
    data=students,
    y="Marks"
)

plt.title("Box Plot of Student Marks")
plt.ylabel("Marks")
plt.show()
```

A histogram shows the distribution of marks. A box plot shows the median, spread and possible outliers.

### c) Scatter plot

```python
sns.scatterplot(
    data=students,
    x="Attendance",
    y="Marks",
    hue="Department"
)

plt.title("Attendance versus Marks")
plt.xlabel("Attendance")
plt.ylabel("Marks")
plt.show()
```

Interpretation:

The points generally move upward from left to right. This suggests that students with higher attendance tend to have higher marks. However, this is an association and does not by itself prove that attendance causes higher marks.

### d) Interactive Plotly chart

```python
figure = px.scatter(
    students,
    x="Attendance",
    y="Marks",
    color="Department",
    size="Study_Hours",
    hover_name="Student",
    hover_data=["Study_Hours"],
    title="Interactive Student Performance Analysis"
)

figure.show()
```

# SECTION B: SETS, RELATIONS AND FUNCTIONS

## Answer 31: Types of Relations

Let (A) be a set and (R) be a relation on (A).

### a) Reflexive Relation

A relation (R) is reflexive when every element is related to itself.

$$
\forall a \in A,\quad (a,a)\in R
$$

**Example:**

$$
A={1,2,3}
$$

$$
R={(1,1),(2,2),(3,3),(1,2)}
$$

The relation is reflexive because all the required diagonal pairs are present:

$$
(1,1),\ (2,2),\ (3,3)
$$

### b) Irreflexive Relation

A relation is irreflexive when no element is related to itself.

$$
\forall a\in A,\quad (a,a)\notin R
$$

**Example:**

$$
A={1,2,3}
$$

$$
R={(1,2),(2,3),(1,3)}
$$

No ordered pair of the form ((a,a)) is present. Therefore, the relation is irreflexive.

### c) Not Reflexive

A relation is **not reflexive** when at least one required diagonal pair is missing.

It may still contain some diagonal pairs.

**Example:**

$$
A={1,2,3}
$$

$$
R={(1,1),(2,2),(1,2)}
$$

This relation is not reflexive because ((3,3)) is missing.

It is also not irreflexive because ((1,1)) and ((2,2)) are present.

Therefore:

* **Reflexive:** All diagonal pairs are present.
* **Irreflexive:** No diagonal pair is present.
* **Not reflexive:** At least one diagonal pair is missing.

---

## Answer 32: Properties of a Relation

Given:

$$
A={1,2,3}
$$

$$
R={(1,1),(2,2),(3,3),(1,2),(2,1)}
$$

### a) Reflexive

A relation is reflexive when:

$$
(1,1),(2,2),(3,3)\in R
$$

All three diagonal pairs are present.

Therefore, (R) is reflexive.

### b) Symmetric

A relation is symmetric when:

$$
(a,b)\in R \Rightarrow (b,a)\in R
$$

We have:

$$
(1,2)\in R
$$

and:

$$
(2,1)\in R
$$

The diagonal pairs are automatically symmetric because reversing them produces the same ordered pair.

Therefore, (R) is symmetric.

### c) Transitive

A relation is transitive when:

$$
(a,b)\in R \text{ and } (b,c)\in R
\Rightarrow (a,c)\in R
$$

Important checks:

$$
(1,2),(2,1)\in R \Rightarrow (1,1)\in R
$$

This condition is satisfied.

Similarly:

$$
(2,1),(1,2)\in R \Rightarrow (2,2)\in R
$$

This condition is also satisfied.

All combinations involving the diagonal pairs also satisfy transitivity.

Therefore, (R) is transitive.

### Final Result

* **Reflexive:** Yes
* **Symmetric:** Yes
* **Transitive:** Yes

Thus, (R) is an **equivalence relation**.

---

## Answer 33: Number of Relations

Let:

$$
|A|=5
$$

Then:

$$
|A\times A|=5\times 5=25
$$

### a) Total Number of Possible Relations

A relation on (A) is any subset of (A\times A).

A set containing 25 elements has:

$$
2^{25}
$$

subsets.

Therefore:

$$
\boxed{2^{25}=33,!554,!432}
$$

### b) Number of Reflexive Relations

In a reflexive relation, the five diagonal pairs must be present:

$$
(a_1,a_1),(a_2,a_2),(a_3,a_3),(a_4,a_4),(a_5,a_5)
$$

The number of remaining optional ordered pairs is:

$$
25-5=20
$$

Each optional pair may either be included or excluded.

Therefore:

$$
\boxed{2^{20}=1,!048,!576}
$$

### c) Number of Symmetric Relations

There are five diagonal pairs. Each diagonal pair may either be included or excluded.

The number of unordered pairs of distinct elements is:

$$
\binom{5}{2}=10
$$

For each unordered pair ({a,b}), either both ((a,b)) and ((b,a)) are included, or both are excluded.

Therefore, the total number of independent choices is:

$$
5+10=15
$$

Hence:

$$
\boxed{2^{15}=32,!768}
$$

---

## Answer 34: Newspaper Survey

Let:

$$
H=\text{set of students reading The Hindu}
$$

$$
T=\text{set of students reading The Times of India}
$$

Given:

$$
n(H)=70
$$

$$
n(T)=60
$$

$$
n(H\cap T)=25
$$

The total number of students is:

$$
120
$$

### a) Students Reading at Least One Newspaper

Using the inclusion-exclusion principle:

$$
n(H\cup T)=n(H)+n(T)-n(H\cap T)
$$

$$
n(H\cup T)=70+60-25
$$

$$
\boxed{n(H\cup T)=105}
$$

### b) Students Reading Neither Newspaper

$$
120-105=\boxed{15}
$$

### c) Students Reading Only The Hindu

$$
n(H\text{ only})=n(H)-n(H\cap T)
$$

$$
n(H\text{ only})=70-25
$$

$$
\boxed{n(H\text{ only})=45}
$$

Students reading only The Times of India:

$$
n(T\text{ only})=60-25=35
$$

### d) Students Reading Exactly One Newspaper

$$
45+35=\boxed{80}
$$

### Final Answers

* **At least one newspaper:** (105)
* **Neither newspaper:** (15)
* **Only The Hindu:** (45)
* **Exactly one newspaper:** (80)

---

## Answer 35: Programming Language Survey

Let:

* (P) be the set of students who know Python.
* (C) be the set of students who know C.

Given:

$$
n(P)=90
$$

$$
n(C)=70
$$

$$
n(P\cap C)=40
$$

The total number of students is:

$$
150
$$

### a) Students Knowing at Least One Language

Using the inclusion-exclusion principle:

$$
n(P\cup C)=n(P)+n(C)-n(P\cap C)
$$

$$
n(P\cup C)=90+70-40
$$

$$
\boxed{n(P\cup C)=120}
$$

### b) Students Knowing Neither Language

$$
150-120=\boxed{30}
$$

### c) Students Knowing Only Python

$$
n(P\text{ only})=90-40
$$

$$
\boxed{n(P\text{ only})=50}
$$

Students knowing only C:

$$
n(C\text{ only})=70-40=30
$$

### d) Students Knowing Exactly One Language

$$
50+30=\boxed{80}
$$

### Final Answers

* **At least one language:** (120)
* **Neither language:** (30)
* **Only Python:** (50)
* **Exactly one language:** (80)

---

## Answer 36: Tea, Coffee and Milk Survey

Let (T), (C), and (M) represent the sets of people who drink tea, coffee, and milk, respectively.

Given:

$$
n(T)=120,\quad n(C)=100,\quad n(M)=80
$$

$$
n(T\cap C)=50
$$

$$
n(C\cap M)=40
$$

$$
n(T\cap M)=45
$$

$$
n(T\cap C\cap M)=20
$$

The total number of people surveyed is (200).

### a) People Drinking at Least One Beverage

Using the inclusion-exclusion principle:

$$
\begin{aligned}
n(T\cup C\cup M)
&=n(T)+n(C)+n(M)\
&\quad -n(T\cap C)-n(C\cap M)-n(T\cap M)\
&\quad +n(T\cap C\cap M)
\end{aligned}
$$

Substituting the values:

$$
n(T\cup C\cup M)
=120+100+80-50-40-45+20
$$

$$
n(T\cup C\cup M)=300-135+20
$$

$$
\boxed{n(T\cup C\cup M)=185}
$$

### b) People Drinking None of the Beverages

$$
200-185=\boxed{15}
$$

### c) People Drinking Tea and Coffee but Not Milk

$$
n\bigl((T\cap C)\setminus M\bigr)
=n(T\cap C)-n(T\cap C\cap M)
$$

$$
n\bigl((T\cap C)\setminus M\bigr)=50-20
$$

$$
\boxed{30}
$$

### d) People Drinking Only Milk

$$
n(M\text{ only})
=n(M)-n(T\cap M)-n(C\cap M)+n(T\cap C\cap M)
$$

$$
n(M\text{ only})=80-45-40+20
$$

The value (20) is added back because the people drinking all three beverages were subtracted twice.

$$
\boxed{n(M\text{ only})=15}
$$

### Final Answers

* **At least one beverage:** (185)
* **None:** (15)
* **Tea and coffee but not milk:** (30)
* **Only milk:** (15)

---

## Answer 37: Three-Subject Survey

Let (M), (C), and (P) represent Mathematics, Computer Science, and Physics, respectively.

Given:

$$
n(M)=60,\quad n(C)=50,\quad n(P)=40
$$

$$
n(M\cap C)=25
$$

$$
n(C\cap P)=20
$$

$$
n(M\cap P)=15
$$

$$
n(M\cap C\cap P)=10
$$

The total number of students is (100).

### a) Students Studying at Least One Subject

Using the inclusion-exclusion principle:

$$
\begin{aligned}
n(M\cup C\cup P)
&=n(M)+n(C)+n(P)\
&\quad -n(M\cap C)-n(C\cap P)-n(M\cap P)\
&\quad +n(M\cap C\cap P)
\end{aligned}
$$

Substituting the values:

$$
n(M\cup C\cup P)=60+50+40-25-20-15+10
$$

$$
n(M\cup C\cup P)=150-60+10
$$

$$
\boxed{n(M\cup C\cup P)=100}
$$

### b) Students Studying None of the Subjects

$$
100-100=\boxed{0}
$$

### c) Students Studying Only Mathematics

$$
n(M\text{ only})
=n(M)-n(M\cap C)-n(M\cap P)+n(M\cap C\cap P)
$$

$$
n(M\text{ only})=60-25-15+10
$$

$$
\boxed{n(M\text{ only})=30}
$$

### d) Students Studying Exactly Two Subjects

Mathematics and Computer Science only:

$$
n(M\cap C\text{ only})=25-10=15
$$

Computer Science and Physics only:

$$
n(C\cap P\text{ only})=20-10=10
$$

Mathematics and Physics only:

$$
n(M\cap P\text{ only})=15-10=5
$$

Therefore:

$$
15+10+5=\boxed{30}
$$

### Final Answers

* **At least one subject:** (100)
* **None:** (0)
* **Only Mathematics:** (30)
* **Exactly two subjects:** (30)

---

## Answer 38: Inverse Function

Given:

$$
f(x)=\frac{3x-10}{4}
$$

and:

$$
g(x)=\frac{4x+10}{3}
$$

### a) Find (f(g(x)))

By definition:

$$
f(g(x))=\frac{3g(x)-10}{4}
$$

Substitute:

$$
g(x)=\frac{4x+10}{3}
$$

Therefore:

$$
f(g(x))
=

\frac{3\left(\frac{4x+10}{3}\right)-10}{4}
$$

$$
f(g(x))
=

\frac{4x+10-10}{4}
$$

$$
f(g(x))
=

\frac{4x}{4}
$$

$$
\boxed{f(g(x))=x}
$$

### b) Find (g(f(x)))

By definition:

$$
g(f(x))=\frac{4f(x)+10}{3}
$$

Substitute:

$$
f(x)=\frac{3x-10}{4}
$$

Therefore:

$$
g(f(x))
=

\frac{4\left(\frac{3x-10}{4}\right)+10}{3}
$$

$$
g(f(x))
=

\frac{3x-10+10}{3}
$$

$$
g(f(x))
=

\frac{3x}{3}
$$

$$
\boxed{g(f(x))=x}
$$

### c) Conclusion

Since:

$$
f(g(x))=x
$$

and:

$$
g(f(x))=x
$$

the functions are inverses of each other.

Therefore:

$$
\boxed{g=f^{-1}}
$$

Similarly:

$$
\boxed{f=g^{-1}}
$$

---

## Answer 39: Composition of Functions

Given:

$$
f(x)=5x-2
$$

and:

$$
g(x)=x^2+3
$$

### a) Find ((f\circ g)(x))

By definition:

$$
(f\circ g)(x)=f(g(x))
$$

Substitute (g(x)=x^2+3):

$$
(f\circ g)(x)=5(x^2+3)-2
$$

$$
(f\circ g)(x)=5x^2+15-2
$$

$$
\boxed{(f\circ g)(x)=5x^2+13}
$$

### b) Find ((g\circ f)(x))

By definition:

$$
(g\circ f)(x)=g(f(x))
$$

Substitute (f(x)=5x-2):

$$
(g\circ f)(x)=(5x-2)^2+3
$$

$$
(g\circ f)(x)=25x^2-20x+4+3
$$

$$
\boxed{(g\circ f)(x)=25x^2-20x+7}
$$

### c) Find ((f\circ f)(x))

$$
(f\circ f)(x)=f(f(x))
$$

$$
f(f(x))=5(5x-2)-2
$$

$$
f(f(x))=25x-10-2
$$

$$
\boxed{(f\circ f)(x)=25x-12}
$$

### d) Find ((g\circ f)(-1))

First, calculate (f(-1)):

$$
f(-1)=5(-1)-2=-7
$$

Then calculate (g(-7)):

$$
g(-7)=(-7)^2+3
$$

$$
g(-7)=49+3
$$

$$
\boxed{(g\circ f)(-1)=52}
$$

### e) Find ((f\circ g)(-2))

First, calculate (g(-2)):

$$
g(-2)=(-2)^2+3=7
$$

Then calculate (f(7)):

$$
f(7)=5(7)-2
$$

$$
f(7)=35-2
$$

$$
\boxed{(f\circ g)(-2)=33}
$$

---

## Answer 40: Functions and Relations

Given:

$$
A={1,2,3,4}
$$

and:

$$
f(x)=5-x
$$

where (f:A\rightarrow A).

### a) Write the Function as a Set of Ordered Pairs

Calculate the output for every element of (A):

$$
f(1)=5-1=4
$$

$$
f(2)=5-2=3
$$

$$
f(3)=5-3=2
$$

$$
f(4)=5-4=1
$$

Therefore:

$$
\boxed{
f={(1,4),(2,3),(3,2),(4,1)}
}
$$

### b) Determine Whether the Function Is One-to-One and Onto

The outputs are:

$$
{4,3,2,1}
$$

Every input has a different output. Therefore, the function is **one-to-one**.

Every element of the codomain (A) occurs as an output. Therefore, the function is **onto**.

Hence, (f) is a **bijective function**.

### c) Find the Inverse Function

To obtain the inverse, reverse every ordered pair:

$$
f^{-1}
=

{(4,1),(3,2),(2,3),(1,4)}
$$

Rearranging the ordered pairs according to their first elements:

$$
f^{-1}
=

{(1,4),(2,3),(3,2),(4,1)}
$$

Therefore:

$$
\boxed{f^{-1}=f}
$$

The function is therefore called a **self-inverse function** or an **involution**.

### Verification

Since:

$$
f^{-1}(x)=5-x
$$

we obtain:

$$
f(f^{-1}(x))=5-(5-x)
$$

$$
f(f^{-1}(x))=5-5+x
$$

$$
\boxed{f(f^{-1}(x))=x}
$$

Similarly:

$$
\boxed{f^{-1}(f(x))=x}
$$


# SECTION C: FUNDAMENTALS OF COMPUTERS

## Answer 41: Introduction to Computers

### a) Definition

A computer is an electronic device that accepts data as input, processes it according to instructions, stores data when required and produces meaningful information as output.

### b) Input–process–output–storage cycle

**Input:** Raw data and instructions are entered into the computer.

Examples:

- Keyboard input
    
- Mouse clicks
    
- Scanned document
    
- Marks entered by a teacher
    

**Processing:** The CPU performs calculations and logical operations.

Examples:

- Adding marks
    
- Calculating average
    
- Comparing marks with pass criteria
    

**Output:** The processed information is presented to the user.

Examples:

- Display on monitor
    
- Printed report
    
- Result sheet
    

**Storage:** Data or results are saved for future use.

Examples:

- Hard disk
    
- SSD
    
- Pen drive
    
- Cloud storage
    

### c) Student-marks example

Input:

- Student name
    
- Roll number
    
- Subject marks
    

Processing:

- Add subject marks
    
- Calculate average
    
- Determine grade
    
- Decide pass or fail
    

Output:

- Total marks
    
- Average marks
    
- Grade
    
- Result
    

Storage:

- Save the result in a database, spreadsheet or file.

* * *

## Answer 42: Data, Information, Hardware and Software

### a) Data and information

**Data** consists of raw facts that may not be meaningful by themselves.

Examples:

```text
65, 78, 82, 91
```

```text
Aman, 101, CSE
```

**Information** is processed and organized data that is meaningful.

Examples:

```text
The average mark is 79.
```

```text
Aman belongs to the CSE department.
```

### b) Hardware and software

**Hardware** refers to the physical components of a computer that can be touched.

Examples:

- Keyboard
    
- Monitor
    
- Processor
    
- Printer
    
- Hard disk
    

**Software** refers to programs and instructions that tell the computer what to do.

Examples:

- Windows
    
- Microsoft Excel
    
- Google Chrome
    
- Python
    
- Antivirus software
    

### c) Classification

| Item | Category |
| --- | --- |
| Keyboard | Hardware |
| Browser | Software |
| Monitor | Hardware |
| Operating system | Software |
| Printer | Hardware |

* * *

## Answer 43: Characteristics of Computers

### a) Speed, accuracy and diligence

**Speed:** Computers can perform millions or billions of operations in a very short time.

Example: A computer can calculate the results of thousands of students within seconds.

**Accuracy:** A computer produces accurate results when the instructions and input are correct.

Example: Excel correctly calculates totals using a formula.

**Diligence:** A computer can repeat the same task for a long time without becoming tired.

Example: A server can process requests continuously.

### b) Storage and versatility

**Storage:** Computers can store large quantities of data and retrieve it quickly.

Example: A university database can store student records for many years.

**Versatility:** A computer can perform many different types of tasks.

Example: The same computer may be used for coding, communication, accounting and video editing.

### c) Automation and reliability

**Automation:** After receiving instructions, a computer can perform tasks automatically.

Example: A scheduled backup may run every night.

**Reliability:** Computers can consistently perform the same task with predictable results.

Example: A payroll system calculates salaries every month using the same rules.

A computer does not possess human intelligence by itself. It follows instructions provided by software.

* * *

## Answer 44: Types of Computers

### a) Personal computer

A personal computer is designed for use by one person.

Examples:

- Desktop
    
- Laptop
    

Uses:

- Preparing documents
    
- Internet browsing
    
- Programming
    
- Online learning
    

### b) Laptop, server and mainframe

**Laptop:** A portable personal computer with a built-in screen, keyboard and battery.

**Server:** A computer that provides services, data or applications to other computers over a network.

**Mainframe:** A powerful computer used by large organizations to process very large numbers of transactions.

Examples:

- Laptop: student work
    
- Server: hosting a website
    
- Mainframe: banking transaction processing
    

### c) Supercomputers and embedded computers

A **supercomputer** is designed for extremely complex and high-speed calculations.

Applications:

- Weather forecasting
    
- Scientific simulation
    
- Space research
    
- Climate modelling
    

An **embedded computer** is a small computer built into another device to control a specific function.

Applications:

- Washing machine controller
    
- Car braking system
    
- Microwave oven
    
- Smart television
    

* * *

## Answer 45: Computer Applications

### a) Education

Computers are used in education for:

1.  Online classes and virtual meetings.
    
2.  Digital libraries and electronic books.
    
3.  Computer-based examinations.
    
4.  Educational simulations.
    
5.  Preparing presentations and assignments.
    
6.  Learning programming and data analysis.
    

### b) Healthcare or business

Healthcare uses:

1.  Maintaining electronic medical records.
    
2.  Diagnostic imaging such as MRI and CT scans.
    
3.  Hospital appointment systems.
    
4.  Monitoring patients.
    
5.  Medical research.
    

Business uses:

1.  Payroll processing.
    
2.  Inventory management.
    
3.  Accounting.
    
4.  Customer relationship management.
    
5.  Online sales and marketing.
    

### c) ATM withdrawal cycle

**Input:**

- ATM card
    
- PIN
    
- Withdrawal amount
    

**Processing:**

- Validate the card
    
- Verify the PIN
    
- Check the account balance
    
- Determine whether sufficient funds are available
    
- Update the account balance
    

**Storage:**

- Account records
    
- Transaction details
    
- Date, time and ATM location
    

**Output:**

- Cash
    
- Receipt
    
- Updated balance
    
- Confirmation or error message
    

* * *

# SECTION D: C, R AND MICROSOFT EXCEL

## Answer 46: Introduction to C Programming

### a) Structure of a C program

A basic C program contains:

1.  Documentation or comments
    
2.  Header files
    
3.  `main()` function
    
4.  Variable declarations
    
5.  Program statements
    
6.  `return` statement
    

Example:

```c
#include <stdio.h>

int main()
{
    printf("Hello World");
    return 0;
}
```

### b) Purpose of important components

`#include <stdio.h>` includes the standard input-output library.

`main()` is the starting point of a C program.

`printf()` displays output.

`scanf()` accepts input from the user.

### c) Arithmetic program

```c
#include <stdio.h>

int main()
{
    float number1, number2;

    printf("Enter the first number: ");
    scanf("%f", &number1);

    printf("Enter the second number: ");
    scanf("%f", &number2);

    printf("Sum = %.2f\n", number1 + number2);
    printf("Difference = %.2f\n", number1 - number2);
    printf("Product = %.2f\n", number1 * number2);

    if (number2 != 0)
    {
        printf("Quotient = %.2f\n", number1 / number2);
    }
    else
    {
        printf("Division by zero is not possible.\n");
    }

    return 0;
}
```

* * *

## Answer 47: Conditions and Loops in C

### a) Even or odd

```c
#include <stdio.h>

int main()
{
    int number;

    printf("Enter an integer: ");
    scanf("%d", &number);

    if (number % 2 == 0)
    {
        printf("%d is even.\n", number);
    }
    else
    {
        printf("%d is odd.\n", number);
    }

    return 0;
}
```

### b) Largest of three numbers

```c
#include <stdio.h>

int main()
{
    float a, b, c, largest;

    printf("Enter three numbers: ");
    scanf("%f %f %f", &a, &b, &c);

    if (a >= b && a >= c)
    {
        largest = a;
    }
    else if (b >= a && b >= c)
    {
        largest = b;
    }
    else
    {
        largest = c;
    }

    printf("Largest number = %.2f\n", largest);

    return 0;
}
```

### c) Multiplication table

```c
#include <stdio.h>

int main()
{
    int number, counter;

    printf("Enter a number: ");
    scanf("%d", &number);

    for (counter = 1; counter <= 10; counter++)
    {
        printf(
            "%d x %d = %d\n",
            number,
            counter,
            number * counter
        );
    }

    return 0;
}
```

* * *

## Answer 48: R Vectors and Data Frames

### a) Create an R vector

```r
marks <- c(65, 72, 80, 91, 76, 68, 84, 59, 88, 74)

print(marks)
```

A vector is a one-dimensional collection of values of the same basic data type.

### b) Statistical calculations

```r
total_marks <- sum(marks)
average_marks <- mean(marks)
median_marks <- median(marks)
minimum_marks <- min(marks)
maximum_marks <- max(marks)

print(total_marks)
print(average_marks)
print(median_marks)
print(minimum_marks)
print(maximum_marks)
```

### c) Data frame and filtering

```r
students <- data.frame(
  Name = c(
    "Aman",
    "Riya",
    "Karan",
    "Neha",
    "Arjun"
  ),
  Department = c(
    "CSE",
    "CSE",
    "ECE",
    "ECE",
    "CSE"
  ),
  Marks = c(
    78,
    92,
    67,
    85,
    74
  )
)

print(students)

high_scorers <- students[students$Marks > 70, ]

print(high_scorers)
```

Alternative filtering:

```r
subset(students, Marks > 70)
```

* * *

## Answer 49: Data Visualization in R

Given:

```r
marks <- c(65, 72, 80, 55, 91, 76, 68, 84)
```

### a) Bar chart

```r
student_names <- c(
  "Aman",
  "Riya",
  "Karan",
  "Neha",
  "Arjun",
  "Pooja",
  "Rahul",
  "Simran"
)

barplot(
  marks,
  names.arg = student_names,
  main = "Marks of Students",
  xlab = "Students",
  ylab = "Marks",
  col = "skyblue",
  ylim = c(0, 100)
)
```

### b) Histogram

```r
hist(
  marks,
  main = "Distribution of Student Marks",
  xlab = "Marks",
  ylab = "Frequency",
  col = "lightgreen",
  border = "black",
  breaks = 5
)
```

### c) Difference

A bar chart compares separate categories. Each bar may represent a different student.

A histogram displays the distribution of continuous numerical data. Marks are divided into intervals, and the height of each bar shows the number of observations in that interval.

In a bar chart, bars are normally separated. In a histogram, bars normally touch because the intervals are continuous.

* * *

## Answer 50: Microsoft Excel

Assume the worksheet contains:

| Column | Heading |
| --- | --- |
| A   | Student Name |
| B   | Python Marks |
| C   | Mathematics Marks |
| D   | Attendance |
| E   | Total Marks |
| F   | Average Marks |
| G   | Percentage |
| H   | Result |

### a) Total, average and percentage

In cell `E2`:

```excel
=SUM(B2:C2)
```

In cell `F2`:

```excel
=AVERAGE(B2:C2)
```

Since each subject is out of 100, total maximum marks are 200.

In cell `G2`:

```excel
=(E2/200)*100
```

Alternatively:

```excel
=F2
```

because the average of two subjects marked out of 100 is the same as the percentage.

Copy the formulas down for the remaining students using the fill handle.

### b) Pass or fail

In cell `H2`:

```excel
=IF(F2>=40,"Pass","Fail")
```

A stricter formula requiring at least 40 in both subjects would be:

```excel
=IF(AND(B2>=40,C2>=40),"Pass","Fail")
```

### c) Conditional formatting and chart

To highlight averages above 75:

1.  Select the range `F2:F11`.
    
2.  Open **Home**.
    
3.  Select **Conditional Formatting**.
    
4.  Select **Highlight Cells Rules**.
    
5.  Select **Greater Than**.
    
6.  Enter `75`.
    
7.  Choose the required formatting.
    
8.  Select **OK**.
    

To create a column chart:

1.  Select student names and average marks.
    
2.  Select `A1:A11`.
    
3.  Hold `Ctrl` and select `F1:F11`.
    
4.  Open the **Insert** tab.
    
5.  Select **Column or Bar Chart**.
    
6.  Choose **Clustered Column**.
    
7.  Add the title `Average Marks of Students`.
    
8.  Add axis titles:
    
    - Horizontal axis: Student Name
        
    - Vertical axis: Average Marks
        
9.  Set the vertical axis maximum to 100 when required.
    

The chart visually compares the average performance of all students.