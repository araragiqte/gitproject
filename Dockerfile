
FROM apline

RUN apt -y update
RUN apt -y install apache2 nano 

RUN echo "Hello World from Docker image" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
