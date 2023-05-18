FROM debian:bullseye

RUN apt-get update
RUN apt install -y nginx \
    && apt-get install -y openssl



RUN chown -R www-data:www-data /etc/nginx /var/log/nginx /var/www/html
RUN chmod -R 755 /var/www/html

COPY tools/generate-ssl.sh /generate-ssl.sh
RUN chmod +x generate-ssl.sh

COPY tools/config-nginx.sh /config-nginx.sh
RUN chmod +x config-nginx.sh


RUN /generate-ssl.sh
RUN /config-nginx.sh

RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
