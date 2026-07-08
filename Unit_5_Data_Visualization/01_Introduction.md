# Introduction

## Learning Goals

- Explain the purpose of data visualization.
- Match visualizations to common analysis questions.
- Understand the basic workflow from data to chart.

## 1. What Is Data Visualization?

Data visualization is the process of representing data with charts, graphs, maps, and dashboards so that patterns become easier to understand.

## 2. Visualization Workflow

```mermaid
flowchart LR
    A[Collect Data] --> B[Clean Data]
    B --> C[Explore Data]
    C --> D[Choose Chart]
    D --> E[Create Visualization]
    E --> F[Interpret and Communicate]
```

## 3. Common Questions and Charts

| Question | Chart |
| --- | --- |
| Which category is largest? | Bar chart |
| How does a value change over time? | Line chart |
| How are values distributed? | Histogram |
| Are two variables related? | Scatter plot |
| What percentage belongs to each part? | Pie chart, with few categories |

## 4. Good Chart Checklist

- Clear title.
- Labeled axes.
- Correct scale.
- Readable colors.
- No unnecessary decoration.
- Matches the question being answered.

## 5. Example Scenario

A college wants to analyze student marks.

- Average marks: summary statistics.
- Marks by subject: bar chart.
- Marks distribution: histogram.
- Attendance vs marks: scatter plot.

## 6. Intensive Visualization Workflow

A serious visualization process has more steps than simply choosing a chart.

| Step | Questions to Ask |
| --- | --- |
| Define purpose | What decision or understanding should the chart support? |
| Understand audience | Who will read it and what do they already know? |
| Inspect data | Are values missing, duplicated, inconsistent, or impossible? |
| Choose chart | What visual form best answers the question? |
| Encode carefully | Which variables control position, length, color, or size? |
| Annotate | What labels, units, notes, or highlights are needed? |
| Validate | Does the chart tell the truth without exaggeration? |
| Communicate | What conclusion should the viewer take away? |

Good visualization is a form of argument. It should be accurate, clear, and purposeful.

## 7. Exploratory vs Explanatory Charts

| Type | Purpose | Example |
| --- | --- | --- |
| Exploratory | discover patterns while analyzing data | plotting many variables during analysis |
| Explanatory | communicate a selected finding | final chart in a report |

Exploratory charts can be rough. Explanatory charts must be polished, labeled, and designed for the audience.

## 8. Data Cleaning Before Visualization

Charts can hide bad data. Before plotting, check:

- Missing values.
- Duplicate rows.
- Incorrect data types.
- Impossible values such as negative marks.
- Inconsistent spellings such as `CSE`, `Cse`, and `cse`.
- Outliers that may be real or may be errors.

Never trust a chart more than the data behind it.

## 9. Intensive Practice

1. Take a small marks dataset and define five analysis questions before making any chart.
2. Create one exploratory chart and one explanatory chart from the same data.
3. Identify data quality issues in a messy table and explain how each issue affects visualization.
4. Write a one-paragraph interpretation for a chart without merely repeating labels.
5. Design a dashboard layout for attendance, marks, and subject performance.

## Practice

1. Choose charts for sales, temperature, and survey category data.
2. Find one chart online and describe what makes it clear or confusing.
3. List three questions you can answer from student marks data.
