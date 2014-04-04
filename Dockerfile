FROM phusion/baseimage
MAINTAINER Vic Gupta <vicgupta@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server mysql-client

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/bin/mysqld_safe & \
    sleep 10s && \
    mysql -e "GRANT ALL ON *.* to 'root'@'%'; FLUSH PRIVILEGES"

EXPOSE 3306

CMD ["mysqld_safe"]

RUN apt-get clean
RUN apt-get autoremove
