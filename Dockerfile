FROM python:3.12-slim

WORKDIR /app
COPY . /app

# Install system deps if your requirements need them
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
