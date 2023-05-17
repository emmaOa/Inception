FROM debian:bullseye

    
RUN mkdir -p /run/php/

RUN chown -R www-data:www-data /run/php
RUN chmod -R 755 /run/php/

RUN apt-get update && apt-get \
     install -y php7.4 php7.4-fpm curl

WORKDIR  /var/www/html

RUN curl -L http://wordpress.org/latest.tar.gz | tar xz
    RUN mv wordpress/* /var/www/html
RUN rm -rf latest.tar.gz wordpress
RUN chown -R www-data:www-data /var/www/html
RUN cp wp-config-sample.php wp-config.php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /bin/wp
RUN apt-get install -y php-zip

RUN wp config set  DB_NAME mydatabase --allow-root
RUN wp config set  DB_USER myuser --allow-root
RUN wp config set  DB_PASSWORD mypassword --allow-root
RUN wp config set  DB_HOST db --allow-root
WORKDIR /../../..

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/wp-config.php

CMD ["php-fpm7.4", "-F"]


