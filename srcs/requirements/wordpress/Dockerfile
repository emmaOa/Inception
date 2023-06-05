FROM debian:bullseye

RUN mkdir -p /run/php/

RUN chown -R www-data:www-data /run/php
RUN chmod -R 755 /run/php/

RUN apt-get update && apt-get \
     install -y php7.4 php7.4-fpm curl php7.4-mysql

RUN apt-get update && \
    apt-get install -y php7.4 php7.4-fpm curl php7.4-mysql && \
    rm -rf /var/lib/apt/lists/*

RUN echo "listen = 0.0.0.0:9000" >> /etc/php/7.4/fpm/pool.d/www.conf

COPY /tools/wp.sh /
RUN chmod 777 /wp.sh

EXPOSE 9000

ENTRYPOINT ["/wp.sh"]
CMD ["php-fpm7.4", "-F"]

