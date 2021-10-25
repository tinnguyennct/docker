#!/bin/bash
# Run
cp /apache_exporter-*.linux-amd64/apache_exporter /usr/local/bin
chmod +x /usr/local/bin/apache_exporter
groupadd --system prometheus
useradd -s /sbin/nologin --system -g prometheus prometheus
#Start services
service apache2 start
service apache_exporter.service start
exec "$@"
