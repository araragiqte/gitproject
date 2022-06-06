FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
