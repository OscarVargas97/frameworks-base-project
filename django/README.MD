# Entorno de Desarrollo Django 4.2 con API REST

Este entorno dockerizado permite trabajar con proyectos Django en dos escenarios: proyectos nuevos y proyectos ya iniciados. La configuración se adapta automáticamente en función de si existen archivos de configuración y dependencias en el directorio.

## Requisitos previos

- Docker
- Docker Compose

## Uso del Contenedor

### 1. Proyecto Nuevo

Si aún no tienes un proyecto Django inicializado en la carpeta:

1. Levanta los contenedores con Docker Compose. Al no encontrar un proyecto existente, el contenedor de Django entrará en un estado de espera (`tail`).
2. Entra al contenedor de Django y genera un nuevo proyecto:

```bash
docker-compose exec web django-admin startproject <nombre_proyecto> .
```

1. Reinicia los contenedores para aplicar los cambios:

```bash
docker-compose down
docker-compose up -d
```

### 2. Proyecto Existente

Si ya tienes un proyecto Django en la carpeta:

1. Adapta el archivo `.env` a las variables de entorno de tu proyecto.
2. Verifica que los servicios instanciados en el archivo `docker-compose.yml` coincidan con los que necesitas. Puedes ajustar los servicios según sea necesario.
3. Levanta los contenedores:

```bash
docker-compose up -d
```
