FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2

RUN apt-get install -y git
RUN rm -rf /var/www/html
RUN git clone https://github.com/araragiqte/site.git /var/www/html/


CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
