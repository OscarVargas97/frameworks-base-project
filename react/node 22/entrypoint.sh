#!/bin/bash
# entrypoint.sh

# Salir si algún comando falla
set -e

# Verifica si el directorio ./src existe y accede a él, si no, permanece en el directorio actual
if [ -d "./src" ]; then
  cd ./src
else
  echo "Directorio 'src' no encontrado, permaneciendo en el directorio actual."
fi

# Verifica si package.json existe para instalar dependencias y arrancar el servidor
if [ -f "/app/package.json" ]; then
  echo "Instalando dependencias..."
  pnpm install
  echo "Iniciando servidor de desarrollo..."
  pnpm run dev --host
else
  echo "Archivo package.json no encontrado, no se instalarán dependencias ni se iniciará el servidor."
  tail -f /dev/null
fi
