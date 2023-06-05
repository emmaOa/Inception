#!/bin/bash

echo "server {
        listen 443 ssl default_server;
        listen [::]:443 ssl default_server;

        ssl_certificate /etc/ssl/certificate.crt;
        ssl_certificate_key /etc/ssl/private.key;

        ssl_protocols TLSv1.2 TLSv1.3;

        root /var/www/html;
        index index.html index.php;


        access_log /var/log/nginx/hakase-access.log;
        error_log /var/log/nginx/hakase-error.log;

        location / {
            try_files \$uri \$uri/ =404;
        }
        location ~ \.php$ {
            fastcgi_pass wordpress:9000;
            include snippets/fastcgi-php.conf;
        }
    }
" > /etc/nginx/sites-available/default
