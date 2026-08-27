@echo off
setlocal
set SCRIPT_DIR=%~dp0
if not exist "%SCRIPT_DIR%bin\OpennessLLM.exe" (
  powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%build.ps1"
  if errorlevel 1 exit /b %ERRORLEVEL%
)
"%SCRIPT_DIR%bin\OpennessLLM.exe" %*
exit /b %ERRORLEVEL%
