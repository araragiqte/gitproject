FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2
RUN apt-get install -y git

RUN mkdir /gitsite/
RUN rm -rf /gitsite/
RUN git clone https://github.com/araragiqte/site.git /gitsite/
RUN tar -xJf /gitsite/big.tar.xz -C /gitsite/
RUN make -C /gitsite/ all
RUN cp /gitsite/index.html /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
