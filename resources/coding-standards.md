# C Coding Standards and Style Guide

## Overview

This document outlines the coding standards and style guidelines for the C Systems Programming course. Following consistent coding standards improves code readability, maintainability, and reduces bugs.

## General Principles

1. **Clarity over Cleverness** - Write code that is easy to understand
2. **Consistency** - Follow the same style throughout your codebase
3. **Simplicity** - Use the simplest solution that works
4. **Documentation** - Comment your code appropriately

## File Organization

### File Naming
- Use lowercase with hyphens: `memory-manager.c`, `linked-list.h`
- Header files: `.h` extension
- Source files: `.c` extension
- Test files: `test-filename.c`

### File Structure
```c
/* File header comment */
/*
 * filename.c - Brief description
 * Author: Your Name
 * Date: YYYY-MM-DD
 * Description: Detailed description of file purpose
 */

/* System includes */
#include <stdio.h>
#include <stdlib.h>

/* Local includes */
#include "local-header.h"

/* Constants and macros */
#define MAX_SIZE 1024
#define PI 3.14159

/* Type definitions */
typedef struct node {
    int data;
    struct node *next;
} node_t;

/* Global variables (avoid when possible) */
static int global_counter = 0;

/* Function prototypes */
static void helper_function(void);
int public_function(int param);

/* Function implementations */
```

## Naming Conventions

### Variables
- Use descriptive names: `student_count` not `sc`
- Use lowercase with underscores: `max_buffer_size`
- Avoid single-letter names except for loop counters
- Boolean variables: `is_valid`, `has_data`, `can_read`

### Functions
- Use verb phrases: `calculate_average()`, `print_results()`
- Use lowercase with underscores: `process_input()`
- Static functions: prefix with `static`

### Constants and Macros
- Use ALL_CAPS with underscores: `MAX_BUFFER_SIZE`
- Use descriptive names: `DEFAULT_TIMEOUT` not `TIMEOUT`

### Types
- Suffix with `_t`: `student_t`, `list_node_t`
- Use descriptive names: `error_code_t` not `err_t`

## Indentation and Formatting

### Indentation
- Use 4 spaces (no tabs)
- Consistent indentation throughout

### Braces
```c
/* Preferred style - opening brace on same line */
if (condition) {
    statement;
} else {
    other_statement;
}

/* Function braces on new line */
int function_name(int param)
{
    return param * 2;
}
```

### Line Length
- Maximum 80 characters per line
- Break long lines logically:
```c
/* Good */
result = very_long_function_name(parameter1,
                                parameter2,
                                parameter3);

/* Bad */
result = very_long_function_name(parameter1, parameter2, parameter3);
```

### Spacing
```c
/* Operators */
x = y + z;          /* spaces around operators */
array[index]        /* no space before brackets */
function(param)     /* no space before parentheses */

/* Control structures */
if (condition) {    /* space after keyword */
for (i = 0; i < n; i++) {
while (condition) {
```

## Comments

### File Headers
```c
/*
 * filename.c - Brief description
 * 
 * Author: Your Name <email@example.com>
 * Date: 2024-01-15
 * Version: 1.0
 * 
 * Description:
 * Detailed description of what this file does,
 * its purpose, and any important notes.
 * 
 * Dependencies:
 * - library1
 * - library2
 */
```

### Function Comments
```c
/*
 * calculate_average - Calculate arithmetic mean of array
 * @values: Array of integers
 * @count: Number of elements in array
 * 
 * Returns the arithmetic mean of the values in the array.
 * Returns 0.0 if count is 0 or values is NULL.
 * 
 * Return: Average as double, or 0.0 on error
 */
double calculate_average(int *values, size_t count)
{
    /* Implementation */
}
```

### Inline Comments
```c
/* Good - explain why, not what */
timeout *= 2;  /* Double timeout for retry */

/* Bad - explains obvious */
i++;  /* Increment i */

/* Good - explain complex logic */
/* Use binary search since array is sorted */
while (low <= high) {
    mid = (low + high) / 2;
    /* ... */
}
```

## Error Handling

### Return Values
```c
/* Use consistent error codes */
#define SUCCESS     0
#define ERROR_NULL  -1
#define ERROR_MEM   -2
#define ERROR_IO    -3

int function_name(void)
{
    if (error_condition) {
        return ERROR_NULL;
    }
    return SUCCESS;
}
```

### Error Checking
```c
/* Always check return values */
ptr = malloc(size);
if (ptr == NULL) {
    fprintf(stderr, "Memory allocation failed\n");
    return ERROR_MEM;
}

/* Check system calls */
if (close(fd) == -1) {
    perror("close");
    return ERROR_IO;
}
```

## Memory Management

### Allocation and Deallocation
```c
/* Always check malloc return */
char *buffer = malloc(size);
if (buffer == NULL) {
    return ERROR_MEM;
}

/* Always free allocated memory */
free(buffer);
buffer = NULL;  /* Prevent double-free */
```

### Pointer Usage
```c
/* Initialize pointers */
char *ptr = NULL;

/* Check before dereferencing */
if (ptr != NULL) {
    *ptr = value;
}
```

## Best Practices

### Function Design
- Keep functions small and focused
- Use meaningful parameter names
- Limit function parameters (max 5-7)
- Use const for read-only parameters

```c
/* Good */
int process_student_data(const student_t *student, 
                        const char *filename,
                        bool validate_input);

/* Bad */
int process(void *data, char *file, int flag1, int flag2, int flag3);
```

### Variable Declarations
```c
/* Declare variables at the beginning of scope */
int main(void)
{
    int count = 0;
    char *buffer = NULL;
    FILE *file = NULL;
    
    /* ... rest of function */
}
```

### Magic Numbers
```c
/* Bad */
if (status == 404) {
    /* ... */
}

/* Good */
#define HTTP_NOT_FOUND 404

if (status == HTTP_NOT_FOUND) {
    /* ... */
}
```

## Tools for Code Quality

### Static Analysis
```bash
# Use compiler warnings
gcc -Wall -Wextra -Wpedantic -std=c99

# Static analysis tools
clang-static-analyzer source.c
cppcheck source.c
```

### Code Formatting
```bash
# Use consistent formatting
clang-format -style="{IndentWidth: 4}" source.c
```

### Documentation
```bash
# Generate documentation
doxygen Doxyfile
```

---

**Remember**: Good code is written for humans to read, not just for computers to execute!
