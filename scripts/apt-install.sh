#!/bin/bash

sudo apt update

function install {
    which $1 &> /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo apt install -y ${1}
    else
        echo "Already installed: ${1}"
    fi
}

# Gnome
install gnome-tweaks
install dconf-editor

# Software not included to Ubuntu by default due to the legal status
install ubuntu-restricted-extras

# Add add-apt-repository
install software-properties-common

# Basic
install curl
install wget
install mc
install htop
install git
install make
install vim
install jq
install npm
install chromium-browser

# i3
install i3
install i3status
install dunst
install rofi
install numlockx

# VPN
install vpnc
install network-manager-vpnc

# PlantUML for VSCode
install openjdk-14-jre-headless
install graphviz