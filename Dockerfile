FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2

RUN index.html > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
