# Usa una imagen de Python ligera y reciente como base
FROM python:3.12-slim AS base

# Variables de entorno para Python y Django
ENV PYTHONDONTWRITEBYTECODE=1  
ENV PYTHONUNBUFFERED=1         
ENV DJANGO_ENV=development      
ENV LIBRARY_PATH=/lib:/usr/lib

# Instala dependencias de sistema necesarias, incluyendo Git
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    build-essential \
    libjpeg-dev \
    zlib1g-dev \
    gcc \
    libc-dev \
    libpq-dev \
    bash \
    git \
    && pip3 install --upgrade pip

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias (requirements.txt) y lo instala
COPY requirements.txt .

# Instala dependencias de Python
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copia el código fuente al contenedor


FROM base AS django
# Corrección de permisos para el usuario no root
RUN adduser --disabled-password django && chown -R django /app

# Configura el entrypoint para lanzar el contenedor
ENTRYPOINT ["./entrypoint.sh"]

# Expone el puerto de la aplicación (por defecto 8000)
EXPOSE 8000

FROM django AS dev
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    zsh \
    zsh-syntax-highlighting \
    zsh-autosuggestions \
    locate \
    lsd \
    bat \
    fzf \
    curl \ 
    wget \
    scrub && \
    rm -rf /var/lib/apt/lists/*
RUN updatedb
RUN chsh -s $(which zsh) django || usermod --shell $(which zsh) django
USER django

WORKDIR /app