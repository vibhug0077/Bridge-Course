#include <stdio.h>

int main(void) {
    float principal = 10000.0f;
    float rate = 7.5f;
    float time = 2.0f;

    float simple_interest = (principal * rate * time) / 100.0f;
    float final_amount = principal + simple_interest;

    printf("Principal: %.2f\n", principal);
    printf("Rate: %.2f\n", rate);
    printf("Time: %.2f\n", time);
    printf("Simple interest: %.2f\n", simple_interest);
    printf("Final amount: %.2f\n", final_amount);

    return 0;
}
