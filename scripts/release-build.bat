@echo off

cmake --preset x64-release
if errorlevel 1 exit /b 1

cmake --build --preset x64-release
