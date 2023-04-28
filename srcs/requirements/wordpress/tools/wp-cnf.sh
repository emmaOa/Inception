#!/bin/bash
echo hi 
sed -i "s/define('DB_NAME'.*/define('DB_NAME', 'new_database_name');/g" /var/www/html/wp-config.php
sed -i "s/define('DB_USER'.*/define('DB_USER', 'new_database_user');/g" /var/www/html/wp-config.php
sed -i "s/define('DB_PASSWORD'.*/define('DB_PASSWORD', 'new_database_password');/g" /var/www/html/wp-config.php
