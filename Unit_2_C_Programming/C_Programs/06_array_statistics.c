#include <stdio.h>

int main(void) {
    int marks[] = {82, 91, 61, 48, 76, 35};
    int count = sizeof(marks) / sizeof(marks[0]);
    int total = 0;
    int highest = marks[0];
    int lowest = marks[0];
    int pass_count = 0;

    for (int i = 0; i < count; i++) {
        total += marks[i];

        if (marks[i] > highest) {
            highest = marks[i];
        }

        if (marks[i] < lowest) {
            lowest = marks[i];
        }

        if (marks[i] >= 40) {
            pass_count++;
        }
    }

    printf("Count: %d\n", count);
    printf("Total: %d\n", total);
    printf("Average: %.2f\n", (float)total / count);
    printf("Highest: %d\n", highest);
    printf("Lowest: %d\n", lowest);
    printf("Pass count: %d\n", pass_count);
    printf("Fail count: %d\n", count - pass_count);

    return 0;
}
