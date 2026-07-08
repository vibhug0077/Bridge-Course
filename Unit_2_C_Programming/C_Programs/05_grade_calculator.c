#include <stdio.h>

int main(void) {
    int marks;

    printf("Enter marks between 0 and 100: ");

    if (scanf("%d", &marks) != 1) {
        printf("Invalid input. Please enter a whole number.\n");
        return 1;
    }

    if (marks < 0 || marks > 100) {
        printf("Invalid marks.\n");
    } else if (marks >= 90) {
        printf("Grade A\n");
    } else if (marks >= 75) {
        printf("Grade B\n");
    } else if (marks >= 60) {
        printf("Grade C\n");
    } else if (marks >= 40) {
        printf("Grade D\n");
    } else {
        printf("Fail\n");
    }

    return 0;
}
