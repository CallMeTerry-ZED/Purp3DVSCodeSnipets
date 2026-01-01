@echo off
REM Build VSIX for Purp3DVSCodeSnippets
REM Make sure you have Node.js and vsce installed

echo Building Purp3DVSCodeSnippets VSIX...
cd /d %~dp0\..
vsce package

if %ERRORLEVEL% EQU 0 (
    echo.
    echo VSIX package built successfully!
    echo Check the folder for *.vsix file.
) else (
    echo.
    echo ERROR: Failed to build VSIX.
)

pause