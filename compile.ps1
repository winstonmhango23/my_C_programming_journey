#!/usr/bin/env pwsh
# PowerShell script to compile C programs with GCC on Windows
# Usage: .\compile.ps1 <source.c> [output_name]

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Source,
    
    [Parameter(Position=1)]
    [string]$Output
)

# Check if source file exists
if (-not (Test-Path $Source)) {
    Write-Host "Error: Source file '$Source' not found!" -ForegroundColor Red
    exit 1
}

# If no output name provided, use source filename without extension
if (-not $Output) {
    $Output = [System.IO.Path]::GetFileNameWithoutExtension($Source) + ".exe"
}

# Add .exe extension if not present
if (-not $Output.EndsWith(".exe")) {
    $Output += ".exe"
}

Write-Host "Compiling $Source to $Output..." -ForegroundColor Green

# Use the full path to GCC from our tools directory
$GccPath = "D:\C_PROGRAMMING\my_C_programming_journey\tools\mingw64\bin\gcc.exe"

# Check if GCC exists
if (-not (Test-Path $GccPath)) {
    Write-Host "Error: GCC not found at $GccPath" -ForegroundColor Red
    Write-Host "Please ensure MinGW-w64 is properly installed." -ForegroundColor Yellow
    exit 1
}

# Compile with recommended flags
$CompileArgs = @(
    "-Wall",
    "-Wextra", 
    "-Wpedantic",
    "-std=c99",
    "-g",
    $Source,
    "-o",
    $Output,
    "-lm"
)

try {
    & $GccPath @CompileArgs
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Compilation successful!" -ForegroundColor Green
        Write-Host "Running $Output..." -ForegroundColor Cyan
        Write-Host ""
        
        # Run the compiled program
        & ".\$Output"
        
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Program exited with code $LASTEXITCODE" -ForegroundColor Yellow
        }
    } else {
        Write-Host "Compilation failed!" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "Error during compilation: $_" -ForegroundColor Red
    exit 1
}
