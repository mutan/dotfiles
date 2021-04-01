#!/bin/bash

cd ~

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

docker version
docker info

sudo apt install docker-compose