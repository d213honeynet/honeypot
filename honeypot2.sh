#!/bin/bash

echo "+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+
|I|n|s|t|a|l|a|s|i| |H|o|n|e|y|p|o|t| |D|2|1|3|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+"
echo -e " \n"
echo "Instalasi Docker"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce
sudo apt install -y docker-compose
echo -e " \n"

echo -e " \n"
echo "+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+
|I|n|s|t|a|l|a|s|i| |H|o|n|e|y|p|o|t| |C|o|w|r|i|e|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+"
echo "instalasi Honeypot Cowrie"
sudo docker pull d213honeynet/cowrie:version1
echo -e " \n"

echo -e " \n"
echo "+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
|I|n|s|t|a|l|a|s|i| |H|o|n|e|y|p|o|t| |D|i|o|n|a|e|a|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+"
echo "instalasi Honeypot Dionaea"
#sudo docker pull d213honeynet/dionaea:version4
#sudo apt-get install unzip
#unzip dionaea.zip
git clone https://github.com/DinoTools/dionaea
cd dionaea/
sudo docker build -rmt d213honeynet/dionaea:version1 .
cd ..
unzip dionaea-conf.zip
mkdir /home/${USER}/dionaea
cp -r dionaea-conf/* /home/${USER}/dionaea
echo -e " \n"

echo -e " \n"
echo "+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
|I|n|s|t|a|l|a|s|i| |H|o|n|e|y|p|o|t| |G|l|a|s|t|o|p|f|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+"
echo "instalasi Honeypot Glastopf"
sudo docker pull d213honeynet/glastopf:version1
echo -e " \n"

echo -e " \n"
echo "Instalasi Selesai"
echo "+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
|I|n|s|t|a|l|a|s|i| |S|e|l|e|s|a|i|
+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+"
#sudo docker-compose up
#cp cowrie/cowrie.cfg /var/lib/docker/volumes/honeypot_cowrie-etc/_data
exit 0
