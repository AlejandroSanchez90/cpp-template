@echo off

cmake --preset x64-release
if errorlevel 1 exit /b 1

cmake --build --preset x64-release
if errorlevel 1 exit /b 1

for %%f in (bin\x64\Release\*.exe) do (
    "%%f"
    exit /b
)

echo No executable found in bin\x64\Release
exit /b 1
