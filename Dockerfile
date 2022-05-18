FROM centos:latest
MAINTAINER amitmeshram4658@gmail.com
RUN yum install -y httpd/
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/uxos.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip uxos.zip
RUN cp -rvf uxos/* .
RUN rm -rf uxos uxos.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22

