FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2
RUN apt-get install -y git

RUN git clone --single-branch --branch test https://github.com/araragiqte/site.git /usr/gitproject/ 
RUN mv /usr/gitproject/index.html /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
