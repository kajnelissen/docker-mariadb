FROM	mariadb:10.1.13

MAINTAINER 	Kaj Nelissen

ENV		MYSQL_ROOT_PASSWORD=root
ENV   MYSQL_DATABASE=default
ENV   MYSQL_USER=admin
ENV   MYSQL_PASSWORD=admin

# Expose default MySQL port
EXPOSE	3306
