FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chown mysql:mysql /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod 777 /var/lib/mysql/

RUN mkdir -p /var/run/mysqld/
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld/

COPY tools/auto-mysql-ins.sh /
RUN chmod +x /auto-mysql-ins.sh

EXPOSE 3306

ENTRYPOINT [ "./auto-mysql-ins.sh" ]
