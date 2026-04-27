@echo off
echo Starting Outbound Mass Caller...

echo.
echo Configuration loaded from .env
echo.

echo Starting FastAPI server on port 8000...
start cmd /k "uvicorn server:app --host 0.0.0.0 --port 8000"

timeout /t 2 /nobreak >nul

echo Starting LiveKit agent worker...
python agent.py dev
