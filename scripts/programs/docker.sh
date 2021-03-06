#!/bin/bash

# Install docker

which docker &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: docker"
    cd ~
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh

    #sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
else
    echo "Docker already installed."
fi