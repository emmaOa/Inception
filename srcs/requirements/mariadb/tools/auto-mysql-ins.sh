#!/bin/bash


export DB_NAME=$DB_NAME
export DB_USER=$DB_USER
export DB_PASS=$DB_PASS
# DB_NAME="mydatabase"
# DB_USER="myuser"
# DB_PASS="mypassword"

service mariadb start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e  "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
# mariadb
# echo "hiiii"
# SHOW DATABASES;
# tail -f /dev/null
# service mariadb stop

# mysqld
# CREATE DATABASE mydatabase;
# mysql -u root -p -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'myuser'@'localhost';"
# mariadbd


# docker run -it -v mariadb-volume:/var/lib/mysql im

