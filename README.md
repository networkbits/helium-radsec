# Helium Radsecproxy Setup

# Adapted from orion-radsec. 
# Special thanks to Doris for personally assisting. Shout out to Simeononsecurity, which has many useful related documents and repos.

# This config will change in the future based on Nova Labs certificate modifications and carrier offload additions.

Changed setup script to remove docker install due to errors. Docker must be installed prior to running setup script. Use official setup script below.

 curl -fsSL https://get.docker.com -o get-docker.sh
 sudo sh ./get-docker.sh

Run the setup script.

helium-radsec/setup_scripts/setup.sh

Navigate to helium-radsec directory and start run.sh.

cd helium-radsec
./run.sh


List all docker containers:

sudo docker ps -a

To view container logs, run the following command and replace [container-id] with the container-id shown from the previous command.

sudo docker logs [container-id]

To completely remove docker container:
sudo docker rm -f [container-id]