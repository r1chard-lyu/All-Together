FROM php:8.2.4-cli

WORKDIR /app

COPY . .
RUN apt-get update && \
    apt-get install -y php-mysqli
RUN docker-php-ext-install mysqli

WORKDIR /app/All_Together
EXPOSE 8099

CMD php -S 140.113.216.24:8099