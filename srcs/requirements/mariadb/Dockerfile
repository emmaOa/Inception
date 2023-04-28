FROM debian:bullseye

RUN  apt update 
RUN  apt install -y mariadb-server

COPY tools/auto-mysql-ins.sh /workspaces/Inception/srcs/requirements/mariadb/tools/auto-mysql-ins.sh
RUN chmod +x /workspaces/Inception/srcs/requirements/mariadb/tools/auto-mysql-ins.sh
# RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

CMD ["/workspaces/Inception/srcs/requirements/mariadb/tools/auto-mysql-ins.sh"]
# RUN service mariadb start
# CMD [ "service mariadb start" ]
