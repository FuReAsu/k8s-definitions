#!/bin/bash
#nginx php entrypoint

#install php-fpm
apt-get update -y
apt-get install php-fpm -y

#start php-fpm socket
service php8.2-fpm start
sleep 2