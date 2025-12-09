FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
