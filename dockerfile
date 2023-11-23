FROM ubuntu:20.04
WORKDIR /app
COPY . /app

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y apache2 apache2-utils php php-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD service apache2 start && service myqsql start
