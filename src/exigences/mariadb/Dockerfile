FROM ubuntu:20.04

RUN apt update && apt -y upgrade &&  apt install -y --no-install-recommends  mariadb-server 


COPY ./conf/60-server.cnf /etc/mysql/mariadb.conf.d/60-server.cnf
COPY ./tools/script.sh /usr/local/bin/script.sh
COPY ./tools/.env /usr/local/bin/.env

RUN chmod +x /usr/local/bin/script.sh


CMD ["/bin/bash", "/usr/local/bin/script.sh" ]
