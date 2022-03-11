FROM ubuntu:latest
MAINTAINER bgarg63@gmail.com
RUN apt install -y apache2
WORKDIR /var/www/html
RUN echo this is my first server> /var/www/html/index.html
CMD { "/usr/sbin/httpd","-D" "FOREGROUND"}
EXPOSE 80
