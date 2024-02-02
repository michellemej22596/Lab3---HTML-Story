# Usar una imagen base
FROM ubuntu:20.04

# Etiqueta del creador
LABEL maintainer="Michelle <mejiavillelamichelle@gmail.com>"

# Crear directorio de trabajo
WORKDIR /var/www/html

# Instalar Nginx
RUN apt-get update && \
    apt-get install -y nginx

# Copiar archivos locales al contenedor
COPY html/ /var/www/html/

# Exponer el puerto
EXPOSE 80

# Comando a ejecutar cuando se inicie el contenedor
CMD ["nginx", "-g", "daemon off;"]
