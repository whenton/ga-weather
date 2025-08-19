#!/bin/bash

echo "🚀 Starting FastAPI Weather App..."
echo "📁 Working directory: $(pwd)"

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment not found. Creating it..."
    python3 -m venv venv
fi

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source venv/bin/activate

# Install/upgrade dependencies
echo "📦 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Show environment info
echo "✅ Environment setup complete!"
echo "🐍 Python: $(which python)"
echo "📦 FastAPI version: $(python -c 'import fastapi; print(fastapi.__version__)')"

# Start the server
echo "🌐 Starting server on http://localhost:8000"
python server.py
