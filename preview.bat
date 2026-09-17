@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8080
  py -m http.server 8080
  exit /b
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8080
  python -m http.server 8080
  exit /b
)
echo Python n'est pas installe. Ouvrez index.html directement dans votre navigateur.
pause
