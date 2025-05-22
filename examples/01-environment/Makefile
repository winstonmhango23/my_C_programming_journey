# Makefile for Chapter 1 examples
# Variables
CC = clang
CFLAGS = -Wall -Wextra -Wpedantic -std=c99 -g
LDFLAGS = -lm

# Default target
all: hello compilation_demo debug_example setup_test

# Individual targets
hello: hello.c
	$(CC) $(CFLAGS) -o $@ $<

compilation_demo: compilation_demo.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

debug_example: debug_example.c
	$(CC) $(CFLAGS) -o $@ $<

setup_test: setup_test.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

# Demonstrate compilation stages
stages: compilation_demo.c
	@echo "=== Preprocessing ==="
	$(CC) -E compilation_demo.c -o compilation_demo.i
	@echo "=== Compilation ==="
	$(CC) -S compilation_demo.c -o compilation_demo.s
	@echo "=== Assembly ==="
	$(CC) -c compilation_demo.c -o compilation_demo.o
	@echo "=== Linking ==="
	$(CC) compilation_demo.o $(LDFLAGS) -o compilation_demo
	@echo "All stages complete!"

# Clean up build artifacts
clean:
	rm -f hello compilation_demo debug_example setup_test
	rm -f *.o *.i *.s *.dSYM

# Test all programs
test: all
	@echo "Testing hello..."
	./hello
	@echo "Testing compilation_demo..."
	./compilation_demo
	@echo "Testing setup_test..."
	./setup_test

# Phony targets
.PHONY: all clean test stages
