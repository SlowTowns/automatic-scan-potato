# Cambio a Alpine
FROM python:3.9-alpine

WORKDIR /app
COPY requirements.txt .
# --no-cache reduce el tamaño final de la imagen
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "app.py"]