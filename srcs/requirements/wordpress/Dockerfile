FROM debian:bullseye

    
RUN mkdir -p /run/php/

RUN chown -R www-data:www-data /run/php
RUN chmod -R 755 /run/php/

RUN apt-get update && apt-get \
     install -y php7.4 php7.4-fpm curl php7.4-mysql

COPY tools/www.conf /etc/php/7.4/fpm/pool.d
RUN chmod +x /etc/php/7.4/fpm/pool.d/www.conf

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp-cli

# Set the working directory
# WORKDIR /app

# # Copy your WordPress files to the container
# COPY . /app
# #     --url=${WORDPRESS_WEBSITE_URL_WITHOUT_HTTP} \
# RUN wp core download --allow-root --path=/app
# wp config creat



# WORKDIR  /var/www/html

# RUN curl -L http://wordpress.org/latest.tar.gz | tar xz
# RUN mv wordpress/* /var/www/html
# RUN rm -rf latest.tar.gz wordpress
# RUN chown -R www-data:www-data /var/www/html
# COPY tools/wp-config.php .
# RUN chmod +x wp-config.php

# RUN wp config creat \
#     --allow-root \
#     --title="hi" \
#     --admin_user="imane" \
#     --admin_password="imane123@456" \
#     --admin_email="imaenouazzani.pro@gmail.com"
COPY /tools/wp.sh /
RUN chmod 777 /wp.sh

EXPOSE 9000
CMD ["/wp.sh"]

