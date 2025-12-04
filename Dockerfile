# Imagen base
FROM node:18-alpine

# Crear carpeta de la app
WORKDIR /app

# Copiar package.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 3000

# Ejecutar la app
CMD ["node", "index.js"]
