#!/bin/bash

sudo apt update

function install {

    which $1 &> /dev/null
    if [ $? -ne 0 ]; then
        if [ $2 = "classic" ]; then
            echo "Installing: ${1}..."
            sudo snap install --classic ${1}
        else
            echo "Installing: ${1}..."
            sudo snap install ${1}
        fi
    else
        echo "Already installed: ${1}"
    fi
}

install code classic
install phpstorm classic
install postman
install teams
install telegram-desktop
install flameshot
install vlc