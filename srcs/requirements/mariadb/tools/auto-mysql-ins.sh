#!/bin/bash


DB_NAME="mydatabase"
DB_USER="myuser"
DB_PASS="mypassword"

service mariadb start
mariadb

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e  "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"

tail -f /dev/null
# CREATE DATABASE mydatabase;
# mysql -u root -p -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'myuser'@'localhost';"
# mariadbd


# docker run -it -v mariadb-volume:/var/lib/mysql im

