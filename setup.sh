#!/bin/bash

sudo apt update
sudo apt install docker docker-compose-v2 python3-pip git -y

#Make directory
mkdir ~/hashtopolis
cd ~/hashtopolis

#Git it
git clone https://github.com/hashtopolis/server.git
cd server

#Get config files
wget https://raw.githubusercontent.com/hashtopolis/server/master/docker-compose.yml
wget https://raw.githubusercontent.com/hashtopolis/server/master/env.example -O .env
#Edit hashtopolis env file with users and passwords

#need sudo??? I did at this time
sudo docker compose up

#Agent python3 packages
sudo apt install python3-pip
pip3 install requests psutil

#Download zip from agents tab (http://127.0.0.1:8080/agents.php) and run
python3 hashtopolis.zip

#Enter URL to API and the Vocher from the agents tab. The agent automatically starts and is ready to go
#Can automate this with flags!!! - https://github.com/hashtopolis/agent-python
