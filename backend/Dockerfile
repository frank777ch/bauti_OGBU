FROM python:3.10-slim

WORKDIR /app

# Paso 3: Copiar el archivo de dependencias y luego instalarlas.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Paso 4: Copiar todo el código de nuestra aplicación (la carpeta 'app').
COPY ./app /app/app

# Paso 5: Exponer el puerto 8000 para que el contenedor pueda recibir tráfico.
EXPOSE 8000