#!/bin/bash

echo "server {
        listen 80;
        server_name localhost;

        root /var/www/html;
        index index.html index.php;

        access_log /var/log/nginx/hakase-access.log;
        error_log /var/log/nginx/hakase-error.log;

        location / {
            try_files \$uri \$uri/ /index.php?\$query_string;
        }
        location ~ \.php$ {
            try_files \$uri =404;
            fastcgi_split_path_info ^(.+\.php)(/.+)$;
            fastcgi_pass wordpress:9000;
            fastcgi_index index.php;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
            fastcgi_param PATH_INFO \$fastcgi_path_info;
        }
    }
" > /etc/nginx/sites-available/default
