FROM debian:bullseye

RUN  apt update 
RUN  apt install -y mariadb-server

RUN mkdir -p /run/mysqld/
RUN chown -R mysql:mysql /run/mysqld/

COPY tools/auto-mysql-ins.sh /workspaces/Inception/srcs/requirements/mariadb/tools/auto-mysql-ins.sh
RUN chmod +x /workspaces/Inception/srcs/requirements/mariadb/tools/auto-mysql-ins.sh
# RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld
# RUN ./tools/auto-mysql-ins.sh
CMD ["mariadbd"]
