#!/bin/bash

echo "Instalasi Docker"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce
sudo apt install -y docker-compose

echo "instalasi Honeypot Cowrie"
sudo docker pull d213honeynet/cowrie:version1

echo "instalasi Honeypot Dionaea"
sudo docker pull d213honeynet/dionaea:version4
sudo apt-get install unzip
unzip dionaea.zip
mkdir /home/${USER}/dionaea
cp -r dionaea/ /home/${USER}

echo "instalasi Honeypot Glastopf"
sudo docker pull d213honeynet/glastopf:version1

echo "Instalasi Selesai"
#sudo docker-compose up
#cp cowrie/cowrie.cfg /var/lib/docker/volumes/honeypot_cowrie-etc/_data
exit 0
