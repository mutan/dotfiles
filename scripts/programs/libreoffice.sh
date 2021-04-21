#!/bin/bash

# см. Установка LibreOffice вручную
# https://help.ubuntu.ru/wiki/libreoffice

which libreoffice-writer &> /dev/null

if [ $? -ne 0 ]; then
    sudo add-apt-repository ppa:libreoffice/ppa
    sudo apt-get update
    sudo apt install -y libreoffice-writer
else
    echo "libreoffice-writer already installed."
fi


which libreoffice-calc &> /dev/null

if [ $? -ne 0 ]; then
    sudo add-apt-repository ppa:libreoffice/ppa
    sudo apt-get update
    sudo apt install -y libreoffice-calc
else
    echo "libreoffice-calc already installed."
fi


