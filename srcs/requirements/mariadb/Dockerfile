FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

RUN rm -rf /etc/mysql/my.cnf
COPY conf/my.cnf /etc/mysql/
# RUN chmod -R 755 /var/run/mysqld

RUN mkdir -p /var/run/mysqld/ 
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld/



COPY tools/auto-mysql-ins.sh /auto-mysql-ins.sh
RUN chmod +x /auto-mysql-ins.sh


ENTRYPOINT [ "./auto-mysql-ins.sh" ]
