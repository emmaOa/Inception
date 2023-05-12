!/bin/bash

touch  /etc/nginx/conf.d/default.conf

echo "http{
            server {
        listen 80;
        server_name iouazzan.42.fr;
    
        root /var/www/html;
        index index.php;
    
        access_log /var/log/nginx/hakase-access.log;
        error_log /var/log/nginx/hakase-error.log;
    
        location / {
            try_files $uri $uri/ /index.php?$args;
        }
    
        location ~ \.php$ {
            try_files $uri =404;
            fastcgi_split_path_info ^(.+\.php)(/.+)$;
            fastcgi_pass wordpress:9000;
            fastcgi_index index.php;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_param PATH_INFO $fastcgi_path_info;
        }
    }
}
" > /etc/nginx/conf.d/default.conf
echo "events {}" >> /etc/nginx/conf.d/default.conf

# echo "hiii" > /etc/nginx/conf.d/default.conf
# echo "imane" >> /etc/nginx/conf.d/default.conf
