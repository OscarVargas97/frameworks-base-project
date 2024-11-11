# Usa una imagen base de Node.js
FROM node:22.11-slim AS base

# Instala pnpm de manera global
RUN npm install -g pnpm

# Establece el directorio de trabajo
WORKDIR /app

# Usa una imagen base de Node.js
FROM base AS dev

WORKDIR /app
# Copia los archivos de configuración de paquetes
COPY package*.json .
COPY entrypoint.sh .
# Cambia a un usuario no root

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
    rm -rf /var/lib/apt/lists/* && \
    chsh -s $(which zsh) node

USER node

# Expone el puerto que utiliza la aplicación
EXPOSE 5173

# Define el punto de entrada para el contenedor
ENTRYPOINT ["/app/entrypoint.sh"]
