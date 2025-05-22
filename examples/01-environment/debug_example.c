/*
 * debug_example.c - Program with intentional bugs for debugging practice
 */

#include <stdio.h>
#include <stdlib.h>

int factorial(int n)
{
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

int main(void)
{
    int numbers[] = {1, 2, 3, 4, 5};
    int size = sizeof(numbers) / sizeof(numbers[0]);
    
    printf("Factorial calculations:\n");
    
    for (int i = 0; i <= size; i++) {  // Bug: should be i < size
        int num = numbers[i];
        int fact = factorial(num);
        printf("factorial(%d) = %d\n", num, fact);
    }
    
    return 0;
}
