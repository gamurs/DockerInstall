FROM quay.io/centos/centos:stream9

WORKDIR /app


RUN dnf update -y
RUN dnf install mariadb-server -y
RUN dnf install nodejs npm -y
RUN npm install -g http-server


EXPOSE 8080 3306

CMD service mariadb start && http-server -p 8080
