FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root123
ENV MYSQL_DATABASE=tfi_heroes

COPY heroes.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
