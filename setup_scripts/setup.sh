#!/bin/bash


sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 



sudo apt-get -y install tree jq


sudo usermod -aG docker $(whoami)

echo "Docker Installed"
if  ! sudo docker --version;
then
    echo "Failed to install Docker"
    exit 1
fi


if  ! sudo docker info;
then
    echo "Docker Daemon is not Running"
    echo "Starting Docker Daemon"
    sudo systemctl start docker
fi


echo "Installation Completed"
