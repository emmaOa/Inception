FROM debian:bullseye

RUN apt update 
RUN apt install -y mariadb-server
RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld
CMD ["mariadbd"]