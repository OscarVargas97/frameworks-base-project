#!/bin/bash
set -e
#if [ -d "./src" ]; then
#  cd ./src
#else
#  echo "Directorio 'src' no encontrado, permaneciendo en el directorio actual."
#fi
# Verifica si package.json existe para instalar dependencias y arrancar el servidor
if ls *.csproj 1>/dev/null 2>&1; then
  echo "Instalando dependencias..."
  dotnet restore
  echo "Iniciando servidor de desarrollo..."
  dotnet watch run -c Debug
else
  echo "Archivo .csproj no encontrado, no se instalarán dependencias ni se iniciará el servidor."
  tail -f /dev/null
fi
