@echo off
REM Batch file to compile C programs with GCC on Windows
REM Usage: compile.bat <source.c> [output_name]

if "%1"=="" (
    echo Usage: compile.bat ^<source.c^> [output_name]
    echo Example: compile.bat hello.c
    echo Example: compile.bat hello.c my_program
    exit /b 1
)

set SOURCE=%1
set OUTPUT=%2

REM If no output name provided, use source filename without extension
if "%OUTPUT%"=="" (
    for %%f in ("%SOURCE%") do set OUTPUT=%%~nf.exe
)

REM Add .exe extension if not present
if not "%OUTPUT:~-4%"==".exe" set OUTPUT=%OUTPUT%.exe

echo Compiling %SOURCE% to %OUTPUT%...

REM Use the full path to GCC from our tools directory
set GCC_PATH=D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gcc.exe

REM Compile with recommended flags
"%GCC_PATH%" -Wall -Wextra -Wpedantic -std=c99 -g "%SOURCE%" -o "%OUTPUT%" -lm

if %ERRORLEVEL% EQU 0 (
    echo Compilation successful!
    echo Running %OUTPUT%...
    echo.
    "%OUTPUT%"
) else (
    echo Compilation failed!
    exit /b 1
)
