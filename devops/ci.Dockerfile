# devops/ci.Dockerfile
FROM python:3.6-slim

# Instalar make y dependencias del sistema
RUN apt-get update && \
    apt-get install -y --no-install-recommends make gcc libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copiar requirements y código
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY src /app/src
COPY tests /app/tests
WORKDIR /app

