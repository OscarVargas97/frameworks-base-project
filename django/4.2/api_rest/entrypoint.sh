#!/bin/bash

set -e

if [ -d "./src" ]; then
  cd ./src
else
  echo "Directorio 'src' no encontrado, permaneciendo en el directorio actual."
fi

if [ -f "requirements.txt" ]; then
  python manage.py migrate
  python manage.py runserver 0.0.0.0:8000
else
  echo "Archivo 'requirements.txt' no encontrado."
  tail -f /dev/null
fi

             
