# Resources Directory

This directory contains additional learning resources, references, and tools for the C Systems Programming course.

## Contents

### 📚 Reference Materials
- `c-reference-card.md` - Quick reference for C syntax
- `system-calls-reference.md` - Common system calls
- `debugging-guide.md` - Debugging techniques and tools
- `coding-standards.md` - C coding style guidelines

### 🛠️ Development Tools
- `setup-scripts/` - Environment setup automation
- `templates/` - Project templates and boilerplate code
- `makefiles/` - Common Makefile patterns
- `configs/` - Editor and tool configurations

### 📖 Additional Reading
- `books.md` - Recommended books and publications
- `online-resources.md` - Websites, tutorials, and documentation
- `papers.md` - Important research papers and articles

### 🎯 Practice Resources
- `coding-challenges/` - Additional programming challenges
- `interview-questions/` - Common C interview questions
- `code-review-checklist.md` - Code review guidelines

### 🔧 Utilities
- `scripts/` - Helpful shell scripts and utilities
- `docker/` - Containerized development environments
- `ci-cd/` - Continuous integration examples

## Quick References

### Essential Commands
```bash
# Compile with debugging
gcc -g -Wall -Wextra -o program source.c

# Run with debugger
gdb ./program

# Check for memory leaks (if valgrind available)
valgrind --leak-check=full ./program

# Static analysis
clang-static-analyzer source.c
```

### Useful Flags
- `-Wall -Wextra` - Enable most warnings
- `-g` - Include debugging information
- `-O2` - Optimize for performance
- `-std=c99` - Use C99 standard
- `-pedantic` - Strict standard compliance

### Documentation
- `man 2 syscall` - System call documentation
- `man 3 function` - Library function documentation
- `info gcc` - GCC compiler documentation

## Getting Help

1. **Course Materials** - Check chapter notes first
2. **Man Pages** - Use `man` command for system documentation
3. **Online Resources** - See `online-resources.md`
4. **Community** - Stack Overflow, Reddit r/C_Programming
5. **Books** - See recommended reading list

## Contributing

Feel free to add useful resources:
- Submit pull requests for new materials
- Share useful tools and scripts
- Contribute to reference materials
- Report broken links or outdated information

---

**Knowledge is Power! 🧠**
