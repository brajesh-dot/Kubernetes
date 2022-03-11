FROM ubuntu
MAINTAINER bgarg63@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
WORKDIR /var/www/html
RUN echo this is my first server> /var/www/html/index.html
CMD { "/usr/sbin/httpd","-D" "FOREGROUND"}
EXPOSE 80
