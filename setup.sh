#!/bin/bash

sudo apt update
sudo apt install docker docker-compose-v2 python3-pip -y


wget https://raw.githubusercontent.com/hashtopolis/server/master/docker-compose.yml
wget https://raw.githubusercontent.com/hashtopolis/server/master/env.example -O .env
#Edit hashtopolis env file with users and passwords

#need sudo??? I did at this time
sudo docker compose up

#Agent python3 packages
pip3 install requests psutil

#Download zip from agents tab and run
python3 hashtopolis.zip

#Enter URL to API and the Vocher from the agents tab. The agent automatically starts and is ready to go




