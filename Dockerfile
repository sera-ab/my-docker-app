FROM centos 
LABEL maintainer="seraA."R
RUN yum install httpd -y
RUN systemctl enable httpd
COPY ./index.html  /var/www/html/index.html
EXPOSE 80
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
