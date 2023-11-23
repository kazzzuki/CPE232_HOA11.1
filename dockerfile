
FROM ubuntu:20.04
WORKDIR /app
COPY . /app
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get install -y php
RUN apt-get install -y php-mysql
RUN apt-get clean
EXPOSE 80
CMD service apache2 start && service myqsql start && sleep infinity

