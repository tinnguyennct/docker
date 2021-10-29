FROM php:7.4.25-fpm-buster

ENV DEBIAN_FRONTEND noninteractive
#Apache
RUN apt-get update
RUN apt-get install -y nodejs \
        && apt-get install -y npm \
        && apt-get install -y apache2 \
        && rm -rf /var/cache/apk/*
ADD ./sites-available/site.conf /etc/apache2/sites-available/
COPY ./mods-available/status.conf /etc/apache2/mods-available/status.conf
RUN a2enmod headers && a2enmod rewrite && a2enmod proxy a2enmod proxy_fcgi&& a2dissite 000-default && a2ensite site
EXPOSE 80 9000
ENTRYPOINT [ "/var/www/html/entrypoint.sh" ]
#CMD ["apachectl", "-D", "FOREGROUND"]