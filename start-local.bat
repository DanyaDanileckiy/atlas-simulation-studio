@echo off
cd /d "%~dp0"
start "Atlas Simulation Studio" "http://localhost:8080"
python -m http.server 8080
