# Usa una imagen base de Node.js
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS base

COPY *.csproj ./
WORKDIR /app


FROM base AS dev

WORKDIR /app
COPY entrypoint.sh .
RUN chmod +x /app/entrypoint.sh
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
    git \
    wget \
    scrub && \
    rm -rf /var/lib/apt/lists/* && \
    chsh -s $(which zsh) app

RUN usermod -u 1000 app && \
    groupmod -g 1000 app && \
    find / -path /proc -prune -o -user 1654 -exec chown -h 1000 {} \; && \
    find / -path /proc -prune -o -group 1654 -exec chgrp -h 1000 {} \;

USER app

# Expone el puerto que utiliza la aplicación
EXPOSE 5000

# Define el punto de entrada para el contenedor
ENTRYPOINT ["/app/entrypoint.sh"]
