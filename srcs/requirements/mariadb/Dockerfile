FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /run/mysqld/
RUN chown -R mysql:mysql /run/mysqld/

COPY tools/auto-mysql-ins.sh /auto-mysql-ins.sh
RUN chmod +x /auto-mysql-ins.sh

RUN /auto-mysql-ins.sh

CMD ["mariadbd"]
