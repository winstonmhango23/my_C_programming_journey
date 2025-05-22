/*
 * compilation_demo.c - Demonstrates compilation stages
 */

#include <stdio.h>
#include <math.h>

#define PI 3.14159
#define SQUARE(x) ((x) * (x))

int main(void)
{
    double radius = 5.0;
    double area = PI * SQUARE(radius);
    double circumference = 2 * PI * radius;
    
    printf("Circle with radius %.2f:\n", radius);
    printf("Area: %.2f\n", area);
    printf("Circumference: %.2f\n", circumference);
    printf("Square root of area: %.2f\n", sqrt(area));
    
    return 0;
}
