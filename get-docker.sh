#!/bin/bash
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)
sudo apt-get -y install python-pip
sudo pip install docker-compose
mkdir ~/hello-world && cd $_
touch docker-compose.yml
echo "my-test:" >> docker-compose.yml
echo "  image: hello-world" >> docker-compose.yml
docker-compose up
