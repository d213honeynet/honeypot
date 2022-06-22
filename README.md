# Honeypot
Repositori Instalasi Honeypot D213

Cara Instalasi dan Penggunaan :
1. sudo apt-get install -y git
2. git clone https://github.com/d213honeynet/honeypot/
3. cd honeypot/
4. ./honeypot.sh
5. sudo usermod -aG docker ${USER}
6. su - ${USER}
7. sudo usermod -aG docker username
8. sudo docker-compose up
9. sudo cp cowrie/cowrie.cfg /var/lib/docker/volumes/honeypot_cowrie-etc/_data
