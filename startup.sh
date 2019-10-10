#!/bin/bash

#

# Azure Support ticket 119061821002790 to fix missing MS SQL ODBC support

# Seems ODBC has been added to Linux image, commenting out the install commands

# apt update

# apt install -y gpg

# apt install -y apt-transport-https

# curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# curl https://packages.microsoft.com/config/debian/9/prod.list > /etc/apt/sources.list.d/mssql-release.list

# apt update

# echo "ODBC install success"

# ACCEPT_EULA=Y apt install -y msodbcsql17

# /usr/sbin/apache2ctl -D FOREGROUND

#

# Azure Support ticket 119091721002508 to fix missing TTF support in GD

apt update

apt-get install -y libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev libfreetype6-dev

docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir --enable-gd-native-ttf

docker-php-ext-install gd

echo "GD TTF install success"

echo "end"

/usr/sbin/apache2ctl -D FOREGROUND
