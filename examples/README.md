# Examples Directory

This directory contains code examples that accompany each chapter of the course.

## Organization

Examples are organized by chapter and topic:

```
examples/
├── 01-environment/
│   ├── hello-world/
│   ├── compilation-demo/
│   └── debugging-example/
├── 02-fundamentals/
│   ├── data-types/
│   ├── variables/
│   └── constants/
├── 03-operators/
│   ├── arithmetic/
│   ├── logical/
│   └── bitwise/
└── ...
```

## Example Types

### 📝 Concept Demonstrations
- Simple programs illustrating key concepts
- Step-by-step explanations
- Common patterns and idioms

### 🔍 Code Analysis
- Well-commented examples
- Best practices demonstrations
- Common mistakes and fixes

### 🛠️ Practical Applications
- Real-world use cases
- Integration examples
- Performance comparisons

## How to Use Examples

1. **Study the Code**
   - Read through the source files
   - Understand the logic flow
   - Note the coding style

2. **Compile and Run**
   ```bash
   cd examples/chapter-name/example-name
   make
   ./program
   ```

3. **Experiment**
   - Modify the code
   - Try different inputs
   - Break things and fix them

4. **Learn from Comments**
   - Read all comments carefully
   - Understand the "why" not just "how"
   - Note best practices

## Building Examples

Most examples include a Makefile for easy compilation:

```bash
# Compile a specific example
cd examples/02-fundamentals/data-types
make

# Clean build artifacts
make clean

# Build with debug information
make debug
```

## Contributing

When adding new examples:
- Follow the existing directory structure
- Include comprehensive comments
- Provide a README for complex examples
- Test on multiple systems when possible

---

**Learn by Doing! 💡**
