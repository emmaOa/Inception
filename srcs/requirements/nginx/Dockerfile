FROM debian:bullseye

RUN apt-get update
RUN apt install -y nginx


RUN chown -R www-data:www-data /etc/nginx /var/log/nginx /var/www/html
RUN chmod -R 755 /var/www/html

COPY tools/config-nginx.sh /config-nginx.sh
RUN chmod +x config-nginx.sh


RUN /config-nginx.sh



# RUN chown -R www-data:www-data /etc/nginx/sites-available \
#     && chmod -R 644 /etc/nginx/sites-available \
#     && chown -R www-data:www-data /etc/nginx/sites-enabled \
#     && chmod -R 755 /etc/nginx/sites-enabled
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
