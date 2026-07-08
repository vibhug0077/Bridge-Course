# Statistics

## Learning Goals

- Compute mean, median, mode, range, variance, and standard deviation conceptually.
- Distinguish descriptive and inferential statistics.
- Interpret summary statistics.

## 1. Descriptive Statistics

Descriptive statistics summarize data.

```text
Data = 2, 4, 4, 5, 10
Mean = sum / count = 25 / 5 = 5
Median = middle value = 4
Mode = most frequent value = 4
Range = max - min = 8
```

## 2. Statistics Workflow

```mermaid
flowchart LR
    A[Collect Data] --> B[Clean Data]
    B --> C[Summarize]
    C --> D[Visualize]
    D --> E[Interpret]
```

## 3. Measures

| Measure | Meaning |
| --- | --- |
| Mean | Average |
| Median | Middle value |
| Mode | Most common value |
| Range | Max minus min |
| Variance | Average squared deviation |
| Standard deviation | Typical distance from mean |

## 4. Descriptive vs Inferential

| Type | Purpose |
| --- | --- |
| Descriptive | Summarize available data |
| Inferential | Make conclusions about a larger population |

## 5. Intensive Measures of Center

Mean, median, and mode answer different questions.

| Measure | Sensitive to Outliers? | Best Use |
| --- | --- | --- |
| Mean | yes | balanced numeric data |
| Median | no, comparatively robust | skewed data such as income |
| Mode | no | most common category or value |

Example:

```text
Data: 10, 12, 13, 15, 100
Mean = 30
Median = 13
```

The mean is pulled upward by `100`, while the median better represents the typical value.

## 6. Spread and Interpretation

Two classes can have the same average but different spread.

```text
Class A: 70, 72, 74, 76, 78
Class B: 40, 55, 75, 95, 105
```

Both may have similar centers, but Class B is much more spread out. Standard deviation helps describe this difference.

## 7. Sampling and Bias

Inferential statistics depends on samples. A biased sample can produce misleading conclusions.

Examples of bias:

- Surveying only top-performing students about course difficulty.
- Measuring internet speed only at midnight.
- Ignoring missing values from failed experiments.
- Using a dataset from one city to represent an entire country.

Data quality affects statistical quality.

## 8. Intensive Practice

1. For a dataset of at least 15 values, compute mean, median, mode, range, and standard deviation.
2. Create two datasets with the same mean but different variability.
3. Explain why median is often better for salary data.
4. Identify possible bias in a student satisfaction survey.
5. Use Python or Excel to summarize marks and interpret the result in plain English.

## Practice

1. Find mean and median of `10, 20, 20, 40, 60`.
2. Why can the median be better than the mean for income data?
3. Give one use of statistics in computer science.
