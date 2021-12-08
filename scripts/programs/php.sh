#!/bin/bash

# Install php

which php &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: php"
    sudo add-apt-repository -y ppa:ondrej/php
    sudo apt update
    sudo apt install -y php8.0 php8.0-{bz2,cgi,common,cli,curl,intl,dev,fpm,gd,imagick,json,mbstring,mysql,opcache,pgsql,readline,xml,zip}  
else
    echo "PHP already installed."
fi

# Install composer globally
# https://getcomposer.org/download/
# https://getcomposer.org/doc/00-intro.md#globally

which composer &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: composer"
    cd ~
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv -f composer.phar /usr/local/bin/composer
else
    echo "Composer already installed."
fi