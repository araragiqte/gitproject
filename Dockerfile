FROM ubuntu:latest

RUN apt -y update
RUN apt -y install apache2
RUN apt-get install -y git

<<<<<<< HEAD
RUN git clone --single-branch --branch test https://github.com/araragiqte/site.git /usr/gitproject/ 
RUN mv /usr/gitproject/index.html /var/www/html/index.html
=======
RUN rm -rf /gitproject/
RUN git clone -b test https://github.com/araragiqte/site.git /gitproject/ 
RUN cp /gitproject/index.html /var/www/html/index.html
>>>>>>> a87ea8ea724c9e490957e6489d7c62d8c9aecf76

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
