# Entorno de Desarrollo React con Node.js 22

Este entorno dockerizado está diseñado para ejecutar aplicaciones React con Node.js 22 y se adapta automáticamente a dos escenarios: proyectos nuevos y proyectos ya iniciados.

## Requisitos previos

- Docker
- Docker Compose

## Uso del Contenedor

### 1. Proyecto Nuevo

Si aún no tienes un proyecto React inicializado en la carpeta:

1. Levanta los contenedores con Docker Compose. Al no encontrar un archivo `package.json`, el contenedor de React entrará en un estado de espera (`tail`).
2. Entra al contenedor y genera un nuevo proyecto:

```bash
docker-compose exec web pnpm create vite .
```

3. Sigue los pasos para configurar el proyecto y, al finalizar, reinicia los contenedores

```bash
docker-compose down
docker-compose up -d
```

### 2. Proyecto Existente

Si ya tienes un proyecto React en la carpeta:

1. Adapta el archivo `.env` con las variables de entorno de tu proyecto, incluyendo `PROJECT_NAME` y `DEV_PORT`.
2. Levanta los contenedores:

```bash
docker-compose up -d
```
