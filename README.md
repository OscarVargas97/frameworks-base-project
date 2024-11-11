# Proyecto Multi-tecnología con Docker Compose

Este repositorio contiene configuraciones dockerizadas para entornos de desarrollo de múltiples tecnologías, organizadas en carpetas independientes. Cada carpeta representa un entorno específico y contiene su propio `Dockerfile`, `docker-compose.yml` y archivos de configuración.

## Dependencias y Proyecto Complementario

Este proyecto está diseñado para aprovechar archivos ubicados en carpetas del sistema que se complementan con el proyecto [Deviroment](https://github.com/OscarVargas97/deviroment). Deviroment gestiona las dependencias necesarias para estos contenedores y proporciona herramientas útiles para su configuración y uso. Gracias a esta integración, se facilita una configuración más estable y eficiente para los diferentes entornos de desarrollo incluidos en este repositorio.

## Estructura del proyecto

- **Django**

  - `4.2`
    - `api_rest`: Configuración para el entorno Django 4.2 con API REST.
- **React**

  - `Node.js 22`
    - `node 22`: Configuración para el entorno de React con Node.js 22.

Cada entorno cuenta con su propio README en su carpeta correspondiente, con instrucciones específicas para configuración y ejecución.

## Uso General

Para utilizar cualquiera de los entornos de desarrollo:

1. Copia el contenido de la carpeta del entorno que deseas usar a la ubicación donde deseas implementarlo.
2. Navega a la carpeta copiada.
3. Sigue las instrucciones en el README de esa carpeta para configurar y ejecutar el entorno correspondiente.

## Deuda Técnica

Actualmente, el proyecto se encuentra en un proceso de mejora continua en cuanto a sus prácticas de versionado y organización de commits. Debido a la fase inicial de desarrollo, los mensajes de commit pueden carecer de consistencia y descriptividad. Esta deuda técnica surge de la necesidad de implementar rápidamente los entornos de desarrollo en contenedores y realizar ajustes iniciales sin un protocolo de versionado definido.

Estoy trabajando en la implementación de un protocolo de commits descriptivo y estructurado, lo cual incluirá convenciones de mensajes de commit, control de versiones y un flujo de trabajo en Git que facilitará la trazabilidad y la comprensión del historial de cambios. Estos ajustes se irán reflejando en futuras versiones del repositorio, mejorando la calidad y organización de los commits.
