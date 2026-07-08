# Excel

## Learning Goals

- Use Excel for simple data entry and analysis.
- Create basic charts.
- Understand formulas, sorting, filtering, and pivot tables.

## 1. Why Excel?

Excel is useful for quick data cleaning, calculations, charts, and small reports.

## 2. Excel Workflow

```mermaid
flowchart LR
    A[Enter Data] --> B[Clean Columns]
    B --> C[Use Formulas]
    C --> D[Sort and Filter]
    D --> E[Create Chart]
    E --> F[Interpret]
```

## 3. Common Formulas

| Task | Formula |
| --- | --- |
| Sum | `=SUM(A1:A10)` |
| Average | `=AVERAGE(A1:A10)` |
| Maximum | `=MAX(A1:A10)` |
| Minimum | `=MIN(A1:A10)` |
| Count | `=COUNT(A1:A10)` |

## 4. Chart Types in Excel

- Column chart for comparing categories.
- Line chart for time series.
- Pie chart for simple part-to-whole data.
- Scatter chart for relationships.

## 5. Pivot Table Idea

A pivot table summarizes data by categories.

Example:

| Department | Average Marks |
| --- | --- |
| CSE | 81 |
| ECE | 76 |
| ME | 73 |

## 6. Intensive Excel Analysis Workflow

Excel is useful because it combines data entry, cleaning, calculation, summarization, and visualization in one tool.

Recommended workflow:

1. Convert raw data into a clean table with one header row.
2. Use consistent column names.
3. Check data types: numbers should be numbers, dates should be dates.
4. Remove duplicates only after confirming they are truly duplicate records.
5. Use formulas for calculated columns.
6. Use sorting and filtering to inspect unusual values.
7. Use pivot tables to summarize by category.
8. Create charts from cleaned summaries, not messy raw ranges.

## 7. Useful Formulas Beyond Basics

| Task | Formula Example |
| --- | --- |
| Conditional count | `=COUNTIF(B2:B50, "Pass")` |
| Conditional average | `=AVERAGEIF(C2:C50, "CSE", D2:D50)` |
| Lookup | `=XLOOKUP(A2, F:F, G:G)` |
| Conditional label | `=IF(D2>=40, "Pass", "Fail")` |
| Combine text | `=CONCAT(A2, " - ", B2)` |

Formula literacy is essential because manual calculation does not scale and is easy to break.

## 8. Pivot Table Questions

Pivot tables answer questions such as:

- What is the average mark by department?
- How many students passed each subject?
- Which semester has the highest attendance?
- What is the maximum score by branch?
- How many students fall into each grade category?

The same dataset can produce many summaries by changing rows, columns, values, and filters.

## 9. Intensive Practice

1. Create a dataset of at least 20 students with branch, subject, marks, attendance, and pass/fail.
2. Use formulas to compute total, average, grade, and result.
3. Build a pivot table showing average marks by branch and subject.
4. Create a chart from the pivot table and add a clear title and labels.
5. Write three insights from the Excel analysis and one limitation of the dataset.

## Practice

1. Create a table with five students and three subject marks.
2. Calculate total and average using formulas.
3. Create a bar chart of student averages.
