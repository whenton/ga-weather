from fastapi import FastAPI
from fastapi_mcp import FastApiMCP

# Create FastAPI instance
app = FastAPI(title="Simple Hello World API", version="1.0.0")
mcp = FastApiMCP(app)

@app.get("/")
async def read_root():
    """
    Basic hello world endpoint
    """
    return {"message": "Hello World"}

@app.get("/hello")
async def say_hello():
    """
    Alternative hello world endpoint
    """
    return {"greeting": "Hello World", "status": "success"}

# Optional: Add a health check endpoint
@app.get("/health")
async def health_check():
    """
    Health check endpoint
    """
    return {"status": "healthy", "message": "Hello World API is running"}

# Mount MCP server using the recommended method
mcp.mount_http()

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
