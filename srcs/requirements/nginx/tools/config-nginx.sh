#!/bin/bash

echo "server {
        listen 443 ssl default_server;
        listen [::]:443 ssl default_server;
        server_name localhost;

        ssl_certificate /etc/ssl/certificate.crt;
        ssl_certificate_key /etc/ssl/private.key;

        ssl_protocols TLSv1.2 TLSv1.3;

        root /var/www/html;
        index index.html index.php;


        access_log /var/log/nginx/hakase-access.log;
        error_log /var/log/nginx/hakase-error.log;

        location / {
            # try_files \$uri \$uri/ /index.php?\$query_string;
            try_files \$uri \$uri/ =404;
        }
        location ~ \.php$ {
            # fastcgi_split_path_info ^(.+\.php)(/.+)$;
            fastcgi_pass wordpress:9000;
            # fastcgi_index index.php;
            # include fastcgi_params;
            include snippets/fastcgi-php.conf;
            # fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
            # fastcgi_param PATH_INFO \$fastcgi_path_info;
        }
    }
" > /etc/nginx/sites-available/default
