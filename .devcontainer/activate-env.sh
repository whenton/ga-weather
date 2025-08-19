#!/bin/bash
# Automatically activate Python virtual environment
if [ -f "/workspaces/ga-weather/venv/bin/activate" ]; then
    source /workspaces/ga-weather/venv/bin/activate
    echo "✅ Python virtual environment activated"
    echo "🐍 Python: $(which python3)"
    echo "📦 FastAPI available: $(python3 -c 'import fastapi; print(fastapi.__version__)' 2>/dev/null || echo 'Not found')"
fi
