
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils
RUN apt-get install -y php
RUN apt-get install -y php-mysql
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/

EXPOSE 80
CMD service apache2 start && service myqsql start

