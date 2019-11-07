FROM ubuntu
MAINTAINER Sudeepthi
RUN apt-get update && apt install nginx -y
RUN rm /var/www/html/*.html
COPY index.html /var/www/html/index.html
EXPOSE 8080 8081
Volume ["/var/log/nginx"]
CMD nginx -g 'daemon off;'

