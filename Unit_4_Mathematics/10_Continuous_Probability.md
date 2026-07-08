# Continuous Probability

## Learning Goals

- Explain continuous random variables.
- Interpret probability density at a conceptual level.
- Understand why exact point probability is zero.

## 1. Continuous Variables

A continuous random variable can take infinitely many values in an interval.

Examples:

- Height.
- Weight.
- Time.
- Temperature.

## 2. Density Concept

For continuous variables, probability is represented by area under a curve.

```mermaid
flowchart LR
    A[Probability Density Curve] --> B[Area over interval]
    B --> C[Probability]
```

The probability of one exact value is usually zero. We ask for intervals instead:

```text
P(160 <= height <= 170)
```

## 3. Normal Distribution

The normal distribution is bell-shaped and common in natural measurements.

Important ideas:

- Mean is at the center.
- Most values are near the mean.
- Fewer values appear far from the mean.

## 4. Computing Applications

- Sensor measurements.
- Noise modeling.
- Statistical inference.
- Machine learning features.

## 5. Intensive Density Interpretation

For continuous variables, probability is area, not height. The curve height is called density. A higher density means values near that region are more likely, but the probability over a single exact point is still zero.

Example:

```text
P(height = 170.000000...) = 0
P(165 <= height <= 175) can be positive
```

This feels unusual at first, but it happens because there are infinitely many possible exact values in an interval.

## 6. Cumulative Distribution Function

The cumulative distribution function, or CDF, gives:

```text
F(x) = P(X <= x)
```

If `X` is download time, then `F(3)` means the probability that the download finishes within 3 seconds.

CDFs are useful in reliability, service-level agreements, performance analysis, and simulation.

## 7. Standard Normal Idea

A normal value can be standardized using:

```text
z = (x - mean) / standard deviation
```

The z-score tells how many standard deviations a value is from the mean. A positive z-score is above the mean; a negative z-score is below the mean.

## 8. Intensive Practice

1. Explain why exact point probability is zero for a continuous random variable.
2. Interpret `P(10 <= response_time <= 20)` in a server performance context.
3. Calculate z-scores for values using a given mean and standard deviation.
4. Give three examples of continuous measurements collected by sensors.
5. Compare histogram bars with a smooth density curve.

## Practice

1. Classify age, exact height, and number of calls as discrete or continuous.
2. Why do we use intervals for continuous probability?
3. Give one example of a normal-like measurement.
