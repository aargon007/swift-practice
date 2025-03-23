@echo off
REM Get the absolute path of the current directory (where the batch script is located)
set PROJECT_DIR=%~dp0

REM Display header for clarity
echo -----------------------------------------------------------
echo           Building and Running Swift Project
echo -----------------------------------------------------------

REM Navigate to the src folder
cd /d %PROJECT_DIR%src

REM Compile the Swift code (output to the build directory)
echo Compiling Swift code...
swiftc main.swift -o %PROJECT_DIR%build\main.exe

REM Check if the compilation was successful
if exist %PROJECT_DIR%build\main.exe (
    echo.
    echo -----------------------------------------------------------
    
    REM Run the compiled executable
    %PROJECT_DIR%build\main.exe
    
    REM Display success message
    echo -----------------------------------------------------------
) else (
    echo.
    echo ERROR: Compilation failed. Please check your Swift code.
    echo -----------------------------------------------------------
)

REM No pause, the script ends automatically after execution
