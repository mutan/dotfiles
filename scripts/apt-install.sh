#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Gnome
install gnome-tweaks
install dconf-editor
install ubuntu-restricted-extras

# Basic
install curl
install wget
install mc
install htop
install git
install make
install vim

# i3
install i3
install i3status
install dunst
install rofi

# VPN
install vpnc
install network-manager-vpnc