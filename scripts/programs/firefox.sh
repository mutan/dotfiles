#!/bin/bash

# Firefox browser
# https://launchpad.net/~mozillateam/+archive/ubuntu/firefox-next

which firefox &> /dev/null

if [ $? -ne 0 ]; then
    sudo add-apt-repository ppa:mozillateam/firefox-next -y
    sudo apt update
    sudo apt install -y firefox
else
    echo "Firefox already installed."
fi