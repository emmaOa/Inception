FROM debian:bullseye

# RUN apt-get update && \
#     apt-get install -y php-zip && \
#     docker-php-ext-install zip

WORKDIR  /var/www/html
# RUN WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y php-fpm curl

# WORKDIR /tmp


# RUN apt install -y wordpress
# RUN wget http://wordpress.org/latest.tar.gz
# RUN tar xfz latest.tar.gz


RUN curl -L http://wordpress.org/latest.tar.gz | tar xz
    RUN mv wordpress/* /var/www/html
RUN rm -rf latest.tar.gz wordpress
# WORKDIR  /var/www/html
RUN chown -R www-data:www-data /var/www/html


# WORKDIR /../../..
# RUN touch testfile
# COPY wp-config-sample.php /wordpress
RUN cp wp-config-sample.php wp-config.php
# RUN  mv wordpress/wp-config-sample.php wordpress/wp-config.php
CMD [ "bash" ]
    # WORKDIR /../../..
    # RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    # RUN chmod +x wp-cli.phar
    # RUN mv wp-cli.phar /bin/wp
    # 
    # RUN wp core download --allow-root --skip-content
# RUN wp config creat --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST
    # RUN wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=${DB_HOST}

# RUN wp config creat --dbname=mydatabase --dbuser=myuser --dbpass=mypassword --dbhost=mariadb
# RUN 
# RUN tar xfz latest.tar.gz
# COPY . .
# COPY tools/wp-cnf.sh /workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh
# RUN chmod +x /workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh

# CMD ["/workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh"]

# RUN curl -L https://wordpress.org/latest.tar.gz | tar -xz -C /var/www/html --strip-components=1

# EXPOSE 9000

# CMD ["php-fpm", "-F"] <<-----

