# Chapter 1 Examples - Development Environment Setup

This directory contains all the code examples from Chapter 1 of the C Systems Programming course.

## Files Overview

### Basic Examples
- **`hello.c`** - Traditional "Hello World" program demonstrating basic C structure
- **`compilation_demo.c`** - Program showing preprocessor directives and math library usage
- **`debug_example.c`** - Program with intentional bugs for debugging practice
- **`setup_test.c`** - Comprehensive environment verification test

### Build Files
- **`Makefile`** - Build automation for all examples with advanced targets

## How to Use

### Compile Individual Programs
```bash
# Basic compilation
clang -Wall -Wextra -std=c99 hello.c -o hello

# With math library
clang -Wall -Wextra -std=c99 -lm compilation_demo.c -o compilation_demo

# With debugging information
clang -Wall -Wextra -std=c99 -g debug_example.c -o debug_example
```

### Use the Makefile
```bash
# Build all examples
make

# Build specific example
make hello

# Demonstrate compilation stages
make stages

# Test all programs
make test

# Clean build artifacts
make clean
```

### Debugging Practice
```bash
# Compile with debugging info
clang -g -Wall -Wextra -std=c99 debug_example.c -o debug_example

# Debug with LLDB
lldb debug_example

# LLDB commands to try:
# (lldb) breakpoint set --name main
# (lldb) run
# (lldb) step
# (lldb) print i
# (lldb) print size
# (lldb) continue
# (lldb) quit
```

### Environment Verification
```bash
# Compile and run the setup test
make setup_test
./setup_test

# Expected output should show all tests PASSED
```

## Learning Objectives

By working through these examples, you will:

1. **Understand the compilation process** - See how C code transforms through preprocessing, compilation, assembly, and linking
2. **Practice debugging** - Learn to use LLDB to find and fix bugs
3. **Master build automation** - Use Makefiles to streamline development
4. **Verify your environment** - Ensure all tools are working correctly

## Common Issues and Solutions

### Compilation Errors
```bash
# If you get "command not found" for clang
xcode-select --install

# If you get "library not found for -lm"
# Make sure to link the math library with -lm flag
clang -lm program.c -o program
```

### Runtime Errors
```bash
# If you get segmentation faults
# Compile with debugging and use the debugger
clang -g program.c -o program
lldb program
```

### Makefile Issues
```bash
# If make command fails
# Check that you have make installed
make --version

# Ensure proper indentation (tabs, not spaces) in Makefile
```

## Next Steps

After completing these examples:

1. Try modifying the programs to experiment with different features
2. Practice using the debugger with your own code
3. Create your own Makefile for a multi-file project
4. Move on to Chapter 2 to learn C language fundamentals

---

**Happy Coding! 🚀**
