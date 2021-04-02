#!/bin/bash

sudo apt update

function install {
    which $1 &> /dev/null

    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo snap install ${1}
    else
        echo "Already installed: ${1}"
    fi
}

install "--classic code"
install "--classic phpstorm"
install postman
install teams
install telegram-desktop
install flameshot
install vlc