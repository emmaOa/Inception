FROM debian:bullseye

    
RUN mkdir -p /run/php/

RUN chown -R www-data:www-data /run/php
RUN chmod -R 755 /run/php/

RUN apt-get update && apt-get \
     install -y php7.4 php7.4-fpm curl php7.4-mysql

RUN echo "listen = 0.0.0.0:9000" >> /etc/php/7.4/fpm/pool.d/www.conf 
WORKDIR  /var/www/html

RUN curl -L http://wordpress.org/latest.tar.gz | tar xz
RUN mv wordpress/* /var/www/html
RUN rm -rf latest.tar.gz wordpress
RUN chown -R www-data:www-data /var/www/html
COPY tools/wp-config.php .
RUN chmod +x wp-config.php
CMD ["php-fpm7.4", "-R", "-F"]

