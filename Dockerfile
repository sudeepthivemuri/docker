FROM ubuntu
MAINTAINER Sudeepthi
RUN apt-get update && apt install nginx -y
RUN rm /var/www/html/*.html
COPY index.html /var/www/html/index.html
EXPOSE 8080 8081
VOLUME ["/VAR/LOG/NGINX"]
CMD NGINX -G 'DAEMON OFF;'

