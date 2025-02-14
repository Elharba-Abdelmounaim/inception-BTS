FROM ubuntu:20.04

RUN apt update && apt upgrade -y --no-install-recommends
RUN apt install -y mariadb-server vim --no-install-recommends && rm -fr /var/lib/apt/lists/*

COPY ./conf/60-server.cnf /etc/mysql/mariadb.conf.d/60-server.cnf
COPY ./tools/script.sh /usr/local/bin/script.sh

RUN chmod +x /usr/local/bin/script.sh

ENTRYPOINT [ "/usr/local/bin/script.sh" ]
CMD ["mysql_safe"]






