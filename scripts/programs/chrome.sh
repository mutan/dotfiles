#!/bin/bash

# Chrome browser
# https://help.ubuntu.ru/wiki/google_chrome

which google-chrome-stable &> /dev/null
if [ $? -ne 0 ]; then
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get update
    sudo apt-get install -y google-chrome-stable
else
    echo "# Chrome browser already installed."
fi