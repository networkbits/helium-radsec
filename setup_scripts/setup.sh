#!/bin/bash


sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

sudo apt-get -y install tree jq

sudo usermod -aG docker $(whoami)

echo "Installation Completed"
