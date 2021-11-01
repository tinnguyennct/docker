#!/bin/bash
# Run
echo "ServerName localhost" >> /etc/apache2/apache2.conf
#Start services
php-fpm -D
apachectl -D FOREGROUND
exec "$@"