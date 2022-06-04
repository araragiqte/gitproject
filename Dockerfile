
FROM apline

RUN apt -y update
RUN apt -y install apache2 nano 

RUN echo "Hello World from Docker image" > /var/www/html/index.html
RUN docker build -t araragiqte/testsite:latest .
RUN docker login -u araragiqte -p abcodian0
RUN docker push araragiqte/testsite:latest
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
