# Astro Docker Template

Template base para proyectos [Astro](https://astro.build) usando Docker y Docker Compose.

Permite desarrollar y ejecutar proyectos Astro **sin instalar Node.js, npm ni Astro en el sistema host**.

Ideal para:

* evitar conflictos de versiones
* tener entornos reproducibles
* trabajar en múltiples proyectos con diferentes versiones de Node/Astro
* onboarding rápido en nuevos equipos
* desarrollo en cualquier máquina con Docker

---

# Requisitos

Solo necesitas instalar:

* Docker
* Docker Compose

No es necesario instalar Node.js ni npm.

Verificar instalación:

```bash
docker --version
docker compose version
```

---

# Uso rápido

Clonar el template:

```bash
git clone https://github.com/TU-USUARIO/astro-docker-template.git
cd astro-docker-template
```

Iniciar el entorno de desarrollo:

```bash
docker compose up --build
```

Abrir en el navegador:

```
http://localhost:4321
```

---

# Comandos útiles

## Iniciar el entorno

```bash
docker compose up
```

## Iniciar reconstruyendo imagen

```bash
docker compose up --build
```

## Detener el entorno

```bash
docker compose down
```

## Ejecutar comandos dentro del contenedor

```bash
docker compose exec astro sh
```

Ejemplo:

```bash
docker compose exec astro npm install react
```

---

# Estructura del proyecto

```
.
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── package.json
├── astro.config.mjs
├── public/
└── src/
```

---

# Cómo crear un nuevo proyecto desde este template

Opción 1: usar como template en GitHub

Click en **Use this template**

o

Opción 2: clonar manualmente

```bash
git clone https://github.com/TU-USUARIO/astro-docker-template.git nuevo-proyecto
cd nuevo-proyecto
docker compose up
```

---

# Instalar dependencias

```bash
docker compose exec astro npm install <paquete>
```

Ejemplo:

```bash
docker compose exec astro npm install react react-dom
```

---

# Ejecutar build de producción

```bash
docker compose exec astro npm run build
```

Output generado en:

```
dist/
```

---

# Cómo funciona

Docker ejecuta Astro dentro de un contenedor con su propia versión de:

* Node.js
* npm
* dependencias

Esto permite que cada proyecto tenga su propio entorno aislado sin afectar al sistema host.

---

# Personalización de versión de Node

Editar el `Dockerfile`:

```Dockerfile
FROM node:20-alpine
```

Opciones comunes:

```
node:18-alpine
node:20-alpine
node:22-alpine
```

---

# Hot reload

El template incluye hot reload automático.

Cambios en:

```
src/
public/
astro.config.mjs
```

se reflejan instantáneamente.

---

# Ventajas

* sin instalar Node.js en el sistema
* entorno reproducible
* compatible con cualquier sistema operativo
* aislamiento completo de dependencias
* ideal para desarrollo y producción

---

# Compatible con

* Astro 5
* Node 18+
* Docker Compose v2+

---

# Troubleshooting

## Problemas de permisos

```bash
sudo chown -R $USER:$USER .
```

## Limpiar contenedores

```bash
docker compose down -v
```

## Reconstrucción completa

```bash
docker compose build --no-cache
```

---

# Licencia

MIT

---

# Contribuciones

Pull requests bienvenidos.
