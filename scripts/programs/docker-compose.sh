#!/bin/bash

# Install docker-compose

which docker-compose &> /dev/null
if [ $? -ne 0 ]; then
    echo "Installing: docker-compose"
    sudo apt install -y docker-compose
else
    echo "Docker-compose already installed."
fi