FROM python:3.6-slim

# Instalar dependencias para compilar psycopg2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    gcc \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY src /app/src
WORKDIR /app/src

CMD ["python", "app.py"]

