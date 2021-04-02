#!/bin/bash

# Установть яндекс диск
# https://yandex.ru/support/disk/cli-clients.html

wget -O YANDEX-DISK-KEY.GPG http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG
sudo apt-key add YANDEX-DISK-KEY.GPG
echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" >> /etc/apt/sources.list.d/yandex-disk.list
sudo apt-get update
sudo apt-get install yandex-disk