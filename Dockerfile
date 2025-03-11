# Imagen base de Python
FROM python:3.9-slim

# Seteamos el directorio de trabajo
WORKDIR /app

# Copiar archivos de la aplicación
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto donde Flask escuchará
EXPOSE 5000

# Comando para correr la aplicación Flask
CMD ["python", "app.py"]
