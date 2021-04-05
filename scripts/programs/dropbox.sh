#!/bin/bash

which dropboxd &> /dev/null

if [ $? -ne 0 ]; then
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
    ~/.dropbox-dist/dropboxd
else
    echo "Dropbox already installed."
fi