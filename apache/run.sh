#!/bin/bash

echo "Bash version ${BASH_VERSION}..."

set -e

# a2enmod ssl
# a2enmod proxy_fcgi setenvif
a2enmod rewrite
# service apache2 start
service apache2 restart

echo "short_open_tag = On" >> /usr/local/etc/php/conf.d/custom.ini
echo "display_errors = On" >> /usr/local/etc/php/conf.d/custom.ini
echo "memory_limit = 512M" >> /usr/local/etc/php/conf.d/custom.ini
echo "post_max_size = 2048M" >> /usr/local/etc/php/conf.d/custom.ini
echo "upload_max_filesize = 2048M" >> /usr/local/etc/php/conf.d/custom.ini
echo "max_execution_time = 18000" >> /usr/local/etc/php/conf.d/custom.ini
echo "max_input_time = 1800" >> /usr/local/etc/php/conf.d/custom.ini

echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_connect_back=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.client_host=${XDEBUG_CONFIG_CLIENT_HOST}" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.client_port=${XDEBUG_CONFIG_CLIENT_PORT}" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.idekey=docker" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

cat /etc/hostname | while read hostname; do
  echo "127.0.1.1 $hostname" >>/etc/hosts
done

echo 'ServerName 127.0.0.1' >> /etc/apache2/apache2.conf
echo "AllowEncodedSlashes On" >> /etc/apache2/apache2.conf

service apache2 reload
service apache2 restart
echo "Loading Docker System: ${DOCKER_SYSTEM}..."
sleep infinity
