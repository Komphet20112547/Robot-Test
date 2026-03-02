@echo off
echo Setting up Robot Framework Test Environment...
echo.

REM Create virtual environment
echo [1/3] Creating virtual environment...
python -m venv .venv

REM Activate virtual environment
echo [2/3] Activating virtual environment...
call .\.venv\Scripts\activate.bat

REM Install dependencies
echo [3/3] Installing dependencies...
pip install -r requirements.txt

echo.
echo Setup Complete!
echo.
echo To activate the virtual environment, run:
echo   .\.venv\Scripts\Activate.ps1
echo.
echo To run the test, run:
echo   .\.venv\Scripts\robot.exe robot_test_23.robot
echo.
pause
