FROM ubuntu:20.04
WORKDIR /app
COPY . /app
<<<<<<< HEAD
=======

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
>>>>>>> 3960248 (hoa11)

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y apache2 apache2-utils php php-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD service apache2 start && service myqsql start
