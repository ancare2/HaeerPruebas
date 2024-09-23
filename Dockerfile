# Usa una imagen base de Python
FROM python:3.11-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos necesarios
COPY pyproject.toml .
COPY uso.py .
COPY mi_paquete/ ./mi_paquete/

# Instala las dependencias
RUN pip install --no-cache-dir build && python -m build

# Comando por defecto para ejecutar uso.py
CMD ["python", "uso.py"]

