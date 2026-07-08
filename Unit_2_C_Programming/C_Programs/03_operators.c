#include <stdio.h>

int main(void) {
    int a = 10;
    int b = 3;

    printf("a + b = %d\n", a + b);
    printf("a - b = %d\n", a - b);
    printf("a * b = %d\n", a * b);
    printf("integer division a / b = %d\n", a / b);
    printf("remainder a %% b = %d\n", a % b);
    printf("decimal division = %.2f\n", (float)a / b);

    return 0;
}
