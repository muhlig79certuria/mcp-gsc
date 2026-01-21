# === Stage 1: Build Environment ===
FROM python:3.11-slim

# Working directory
WORKDIR /app

# Copy project
COPY . .

# Install Python-Dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose default MCP-Port
EXPOSE 8080

# Start MCP-Server
CMD ["python", "gsc_server.py"]
