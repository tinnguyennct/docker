#!/bin/bash
# Run
echo "ServerName localhost" >> /etc/apache2/apache2.conf
#Start services
service apache2 start
service supervisor start
exec "$@"
