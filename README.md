# Helium Radsecproxy Setup

### Adapted from [orion-radsec](https://github.com/google-area120/orion-radsec).
 
Special thanks to Doris for personally assisting. Shout out to [Simeononsecurity](https://github.com/simeononsecurity), who has many useful related documents and repos.


#### Files and configurations may change based on Helium Mobile certificate requirements and carrier offload additions.

RadSec Proxy is a workaround when onboarding wireless platforms that do not support RadSec.

### Setup

Docker is required to run radsecproxy. Use official Docker setup script to install.

```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
 ```

Download repository with git.

```
git clone https://github.com/networkbits/helium-radsec.git
```



Make setup.sh and run.sh executuble, run setup script. This is only required during initial setup.

```
chmod +x helium-radsec/setup_scripts/setup.sh
chmod +x helium-radsec/run.sh
bash ./helium-radsec/setup_scripts/setup.sh
```

### Start helium-radsec service

Navigate to helium-radsec directory and start run.sh script. This will start the Docker container. Container is set to ``restart=unless-stopped`` and will start automatically in the case of a system reboot.

```
cd helium-radsec
./run.sh
```

### Troubleshooting Commands

List all docker containers:

``
sudo docker ps -a
``

To view container logs, run the following command and replace [container-id] with the container-id output from previous command.

``
sudo docker logs [container-id]
``

Show container configuration:

``
sudo docker inspect [container-id]
``

To completely remove docker container:

``
sudo docker rm -f [container-id]
``
