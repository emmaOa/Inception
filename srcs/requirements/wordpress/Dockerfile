FROM debian:bullseye

# RUN apt-get update && \
#     apt-get install -y php-zip && \
#     docker-php-ext-install zip



WORKDIR  /var/www/html
# RUN WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y php-mysqli php-fpm curl

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
# RUN rm  wp-config.php

# RUN  mv wordpress/wp-config-sample.php wordpress/wp-config.php
# CMD [ "bash" ]
# WORKDIR /../../..
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /bin/wp
RUN apt-get install -y php-zip

# RUN wp core download --allow-root --skip-content

# RUN apt-get install -y less && \
#     wp package install wp-cli/config-command


# RUN sed -i -e "s/database_name_here/$DB_NAME/g" /var/www/html/wp-config.php
# RUN sed -i -e "s/username_here/$DB_USER/g" /var/www/html/wp-config.php
# RUN sed -i -e "s/password_here/$DB_PASS/g" /var/www/html/wp-config.php
# RUN sed -i -e "s/localhost/$DB_HOST/g" /var/www/html/wp-config.php
# RUN rm /var/www/html/wp-config-sample.php


# WORKDIR  /var/www/html


RUN wp config set  DB_NAME mydatabase --allow-root
RUN wp config set  DB_USER myuser --allow-root
RUN wp config set  DB_PASSWORD mypassword --allow-root
RUN wp config set  DB_HOST db --allow-root
WORKDIR /../../..
# RUN wp  --allow-root user create newuser newuser@example.com --user_pass=password123 --role=administrator
# RUN wp config create --allow-root --dbname=mydatabase --dbuser=myuser --dbpass=mypassword --dbhost=mariadb
# RUN wp config set --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST
# RUN wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=${DB_HOST}

# RUN -u <newuser> -i -- wp config creat --dbname=mydatabase --dbuser=myuser --dbpass=mypassword --dbhost=mariadb
# RUN 
# RUN tar xfz latest.tar.gz
# COPY . .
# COPY tools/wp-cnf.sh /workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh
# RUN chmod +x /workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh

# CMD ["/workspaces/Inception/srcs/requirements/wordpress/tools/wp-cnf.sh"]

# RUN curl -L https://wordpress.org/latest.tar.gz | tar -xz -C /var/www/html --strip-components=1

# EXPOSE 9000

# CMD ["php-fpm", "-F"] <<-----

