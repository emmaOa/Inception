#!/bin/bash

cd /var/www/html

curl -L http://wordpress.org/latest.tar.gz | tar xz
mv wordpress/* /var/www/html
rm -rf latest.tar.gz wordpress
chown -R www-data:www-data /var/www/html

cd /wp.sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli


wp-cli --allow-root core download
wp-cli --allow-root config create --dbname="$DB_NAME" \
    --dbuser="$DB_USER" \
    --dbpass="$DB_PASS" \
    --dbhost="$DB_HOST" --skip-check


wp-cli --allow-root core install \
    --url="http://example.com" \
    --title="$WP_ADMINE_TITLE" \
    --admin_user="$WP_ADMINE_NAME" \
    --admin_password="$WP_ADMINE_PASSWORD" \
    --admin_email="$WP_ADMINE_EMAIL"


wp-cli --allow-root user create \
    "$WP_USER_NAME" "$WP_USER_EMAIL" \
    --role="$WP_USER_ROLE" \
    --user_pass="$WP_USER_PASSWORD"
php-fpm7.4 -F