#!/bin/bash

# Установть Postgres
# https://www.postgresql.org/download/linux/ubuntu/

which yandex-disk &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: Postgres"
    cd ~

    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    sudo apt-get update

    # Install the latest version of PostgreSQL.
    # If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
    sudo apt-get -y install postgresql
else
    echo "Postgres already installed."
fi