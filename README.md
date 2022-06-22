# Honeypot
Repositori Instalasi Honeypot D213

Cara Instalasi dan Penggunaan :
1. sudo apt-get install -y git
2. git clone https://github.com/d213honeynet/honeypot/
3. cd honeypot/
4. chmod +x honeypot*
5. ./honeypot.sh
6. sudo usermod -aG docker ${USER}
7. su - ${USER}
8. sudo usermod -aG docker username
9. sudo docker-compose up
10. sudo cp cowrie/cowrie.cfg /var/lib/docker/volumes/honeypot_cowrie-etc/_data
