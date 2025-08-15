# Simple FastAPI Hello World

A basic FastAPI application with two GET endpoints that return "Hello World".

## Installation

1. Create and activate a virtual environment:
```bash
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install the required dependencies:
```bash
pip install -r requirements.txt
```

## Running the Application

Run the FastAPI server:
```bash
python main.py
```

Or using uvicorn directly:
```bash
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

## API Endpoints

- `GET /` - Returns `{"message": "Hello World"}`
- `GET /hello` - Returns `{"greeting": "Hello World", "status": "success"}`
- `GET /health` - Health check endpoint

## Testing the API

Once the server is running, you can:

1. Visit http://localhost:8000 in your browser
2. View the interactive API documentation at http://localhost:8000/docs
3. View the ReDoc documentation at http://localhost:8000/redoc

## Example Responses

### GET /
```json
{
  "message": "Hello World"
}
```

### GET /hello
```json
{
  "greeting": "Hello World",
  "status": "success"
}
```
