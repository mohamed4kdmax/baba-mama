@echo off
cd /d "%~dp0"
start /B python -m http.server 8765 >nul 2>&1
timeout /t 1 /nobreak >nul
start "" "http://localhost:8765/index.html"
