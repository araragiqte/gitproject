FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2

RUN apt-get install -y git
RUN rm -rf /var/www/html/index.html
RUN if [ "git clone https://github.com/araragiqte/site.git /var/www/html/" = "false" ]  then mkdir /gitsite/ && git clone https://github.com/araragiqte/site.git /gitsite/ && cp index.html /var/www/html/; fi 

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
