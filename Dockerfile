FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2

ADD folder /var/www/html
ADD index.html /var/www/html


CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
