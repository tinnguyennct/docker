#!/bin/bash
# Run
echo "ServerName localhost" >> /etc/apache2/apache2.conf
#Start services
docker-php-entrypoint php-fpm
apachectl -D FOREGROUND
exec "$@"