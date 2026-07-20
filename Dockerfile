FROM nginx:alpine

# Copier la config nginx custom
COPY nginx.conf /etc/nginx/nginx.conf

# Copier le fichier d'authentification
COPY .htpasswd /etc/nginx/.htpasswd

# Copier le contenu HTML
COPY index.html /usr/share/nginx/html/

# Vérifier les permissions
RUN chmod 644 /etc/nginx/.htpasswd

EXPOSE 80
