# Probability

## Learning Goals

- Define experiment, outcome, sample space, and event.
- Calculate simple probability.
- Apply probability to computing examples.

## 1. Basic Terms

| Term | Meaning | Example |
| --- | --- | --- |
| Experiment | Action with uncertain result | Tossing a coin |
| Outcome | Single possible result | Heads |
| Sample space | All possible outcomes | `{H, T}` |
| Event | Set of outcomes of interest | Getting heads |

## 2. Probability Formula

```text
P(Event) = favorable outcomes / total outcomes
```

Example: Probability of rolling an even number on a fair die:

```text
Even outcomes = {2, 4, 6}
Total outcomes = {1, 2, 3, 4, 5, 6}
P(even) = 3 / 6 = 1 / 2
```

## 3. Probability Flow

```mermaid
flowchart LR
    A[Experiment] --> B[Sample Space]
    B --> C[Event]
    C --> D[Count Favorable Outcomes]
    D --> E[Compute Probability]
```

## 4. Computing Applications

- Randomized algorithms.
- Machine learning predictions.
- Network reliability.
- Simulation and games.
- Data science and uncertainty.

## 5. Intensive Probability Rules

For events A and B:

| Rule | Formula | Use |
| --- | --- | --- |
| Complement | `P(not A) = 1 - P(A)` | probability an event does not happen |
| Addition for disjoint events | `P(A or B) = P(A) + P(B)` | events cannot happen together |
| General addition | `P(A or B) = P(A) + P(B) - P(A and B)` | overlapping events |
| Multiplication for independent events | `P(A and B) = P(A) * P(B)` | one event does not affect the other |

Example: rolling a die.

```text
A = even number = {2, 4, 6}
B = number greater than 4 = {5, 6}
A and B = {6}
P(A or B) = 3/6 + 2/6 - 1/6 = 4/6
```

## 6. Conditional Probability

Conditional probability asks: what is the probability of A when B is already known?

```text
P(A given B) = P(A and B) / P(B)
```

Example: A card is drawn from a standard deck. If we know the card is a heart, the probability it is a king is `1/13`, not `1/52`, because the sample space has changed to the 13 hearts.

## 7. Simulation Idea

Probability can be estimated by simulation when exact counting is difficult.

```python
import random

trials = 10000
even_count = 0

for _ in range(trials):
    roll = random.randint(1, 6)
    if roll % 2 == 0:
        even_count += 1

print(even_count / trials)
```

The estimate becomes more stable as the number of trials increases.

## 8. Intensive Practice

1. Compute probabilities for die events: even, prime, greater than 4, even or greater than 4.
2. Calculate conditional probability using a small table of students by branch and hostel status.
3. Simulate 10,000 coin tosses in Python and compare the observed proportion of heads with 0.5.
4. Explain independent and dependent events using real-life examples.
5. Build a probability model for packet loss in a network with two independent links.

## Practice

1. Find the probability of getting a vowel from the word `COMPUTER`.
2. Find the probability of rolling a number greater than 4 on a die.
3. Give an example where probability is used in AI.
