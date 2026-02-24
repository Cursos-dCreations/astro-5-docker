FROM node:20-alpine

# carpeta de trabajo
WORKDIR /app

# copiar package files primero (mejor cache)
COPY package.json package-lock.json* ./

# instalar dependencias
RUN npm install

# copiar el resto
COPY . .

# exponer puerto de astro
EXPOSE 4321

# comando por defecto
CMD ["npm", "run", "dev", "--", "--host"]