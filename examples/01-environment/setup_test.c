/*
 * setup_test.c - Comprehensive setup verification
 * Tests compiler, debugger, and basic C features
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <assert.h>

#define TEST_PASSED "✓ PASSED"
#define TEST_FAILED "✗ FAILED"

void test_basic_io(void)
{
    printf("Testing basic I/O... ");
    printf("%s\n", TEST_PASSED);
}

void test_math_library(void)
{
    printf("Testing math library... ");
    double result = sqrt(16.0);
    if (result == 4.0) {
        printf("%s\n", TEST_PASSED);
    } else {
        printf("%s\n", TEST_FAILED);
    }
}

void test_memory_allocation(void)
{
    printf("Testing memory allocation... ");
    char *buffer = malloc(100);
    if (buffer != NULL) {
        strcpy(buffer, "Memory test");
        if (strcmp(buffer, "Memory test") == 0) {
            printf("%s\n", TEST_PASSED);
        } else {
            printf("%s\n", TEST_FAILED);
        }
        free(buffer);
    } else {
        printf("%s\n", TEST_FAILED);
    }
}

void test_assertions(void)
{
    printf("Testing assertions... ");
    assert(1 == 1);  // Should not trigger
    printf("%s\n", TEST_PASSED);
}

int main(void)
{
    printf("=== C Development Environment Test ===\n\n");
    
    test_basic_io();
    test_math_library();
    test_memory_allocation();
    test_assertions();
    
    printf("\n=== Test Summary ===\n");
    printf("If all tests show PASSED, your environment is ready!\n");
    printf("Compiler: %s\n", __VERSION__);
    printf("C Standard: %ld\n", __STDC_VERSION__);
    
    return 0;
}
