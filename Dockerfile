# Usamos una imagen base de Node.js
FROM node:18-alpine

# Configuramos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos necesarios
COPY package*.json ./
COPY index.js ./

# Instalamos las dependencias
RUN npm install

# Exponemos el puerto 3000
EXPOSE 3000

# Comando por defecto para ejecutar la aplicación
CMD ["node", "index.js"]
