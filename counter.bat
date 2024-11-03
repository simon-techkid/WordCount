@echo off
setlocal enabledelayedexpansion

:: Check if a file path argument is provided
if "%~1"=="" (
    echo Please provide a file path.
    exit /b 1
)

:: Initialize word count to zero
set "wordCount=0"

:: Read each line of the file
for /f "usebackq tokens=*" %%L in (%1) do (
    :: Split line into words
    for %%W in (%%L) do (
        set /a wordCount+=1
    )
)

echo %wordCount% words
