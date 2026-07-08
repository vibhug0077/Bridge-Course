#include <stdio.h>

struct Student {
    int roll;
    char name[30];
    int marks;
};

int main(void) {
    struct Student students[] = {
        {101, "Asha", 88},
        {102, "Neha", 91},
        {103, "Ravi", 61},
        {104, "Ira", 35}
    };

    int count = sizeof(students) / sizeof(students[0]);
    int total = 0;

    printf("Roll  Name   Marks  Result\n");
    printf("--------------------------\n");

    for (int i = 0; i < count; i++) {
        const char *result = students[i].marks >= 40 ? "Pass" : "Fail";
        total += students[i].marks;

        printf("%-5d %-6s %-6d %s\n",
               students[i].roll,
               students[i].name,
               students[i].marks,
               result);
    }

    printf("\nClass average: %.2f\n", (float)total / count);

    return 0;
}
