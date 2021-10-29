#!/bin/sh
#docker-php-entrypoint php-fpm
chown -R nginx:nginx /run/nginx/
chmod 775 /run/nginx/
php-fpm -D
nginx -g "daemon off;"
exec "$@"