@echo off
echo Running AI Education Equity System...
cd %~dp0

echo Checking if package.json exists...
if not exist package.json (
    echo ERROR: package.json not found in current directory
    echo Current directory: %cd%
    pause
    exit /b 1
)

echo Installing dependencies (this may take a moment)...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: npm install failed
    pause
    exit /b 1
)

echo Starting development server...
call npm run dev
if %errorlevel% neq 0 (
    echo ERROR: npm run dev failed
    echo Check if 'dev' script exists in package.json
    pause
    exit /b 1
)