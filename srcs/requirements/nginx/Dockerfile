FROM debian:bullseye

RUN apt-get update
RUN apt install -y vim
RUN apt install -y nginx


COPY tools/config-nginx.sh /config-nginx.sh
RUN chmod +x config-nginx.sh


RUN /config-nginx.sh


# CMD ["nginx", "-g", "daemon off;"]
# CMD cat /etc/nginx/conf.d/default.conf