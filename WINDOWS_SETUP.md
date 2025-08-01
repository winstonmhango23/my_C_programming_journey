# Windows C Development Environment Setup

This repository has been configured for Windows C development using MinGW-w64 GCC compiler.

## Quick Start

### Prerequisites
- Windows 10/11
- PowerShell (included with Windows)

### What's Installed
- **MinGW-w64 GCC 14.2.0**: Complete C/C++ compiler toolchain
- **GDB**: GNU Debugger for debugging C programs
- **Make**: Build automation tool
- **7-Zip**: For extracting archives

### Compilation Tools

Two compilation scripts are provided for convenience:

#### PowerShell Script (Recommended)
```powershell
# Compile and run a C program
.\compile.ps1 examples\01-environment\hello.c

# Compile with custom output name
.\compile.ps1 examples\01-environment\hello.c my_program
```

#### Batch File (Alternative)
```cmd
# Compile and run a C program
compile.bat examples\01-environment\hello.c

# Compile with custom output name
compile.bat examples\01-environment\hello.c my_program
```

### Manual Compilation
If you prefer to compile manually:

```cmd
# Basic compilation
D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gcc.exe -Wall -Wextra -std=c99 -o program.exe source.c

# With math library
D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gcc.exe -Wall -Wextra -std=c99 -lm -o program.exe source.c

# With debugging information
D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gcc.exe -Wall -Wextra -std=c99 -g -o program.exe source.c
```

### Adding GCC to PATH (Optional)
To use `gcc` directly from any location:

1. Open System Properties → Advanced → Environment Variables
2. Add to PATH: `D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin`
3. Restart your terminal

After adding to PATH, you can use:
```cmd
gcc -Wall -Wextra -std=c99 -o program.exe source.c
```

### Debugging
Use GDB for debugging:
```cmd
# Compile with debug info
gcc -g -Wall -Wextra -std=c99 -o program.exe source.c

# Debug with GDB
D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gdb.exe program.exe
```

### IDE Setup
For Visual Studio Code, use these settings in `settings.json`:
```json
{
    "C_Cpp.default.cStandard": "c99",
    "C_Cpp.default.compilerPath": "D:\\C_PROGRAMMING\\my_C_programming_journey\\tools\\mingw64\\bin\\gcc.exe",
    "C_Cpp.default.intelliSenseMode": "windows-gcc-x64"
}
```

### Tested Examples
- ✅ `examples/01-environment/hello.c` - Basic Hello World
- ✅ `examples/01-environment/compilation_demo.c` - Math library usage
- ✅ All compilation stages (preprocessing, compilation, assembly, linking)

### Troubleshooting
- If compilation fails, ensure the GCC path is correct
- For permission issues, run PowerShell as Administrator
- Check that source files exist and have correct syntax

### Next Steps
1. Complete Chapter 01 exercises
2. Explore the examples directory
3. Start with Chapter 02: C Language Fundamentals
