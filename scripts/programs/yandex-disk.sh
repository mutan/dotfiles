#!/bin/bash

# Установть яндекс диск
# https://yandex.ru/support/disk/cli-clients.html

which yandex-disk &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: yandex-disk"
    cd ~
    echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/yandex-disk.list > /dev/null && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | sudo apt-key add - && sudo apt-get update && sudo apt-get install -y yandex-disk
else
    echo "Yandex-disk already installed."
fi