FROM bitnami/centos-base-buildpack
MAINTAINER bgarg63@gmail.com
RUN yum update -y
RUN yum install httpd -y
WORKDIR /var/www/html
RUN echo this is my first server> /var/www/html/index.html
CMD { "/usr/sbin/httpd","-D" "FOREGROUND"}
EXPOSE 80
