# Honeypot
Repositori Instalasi Honeypot D213

Cara Instalasi dan Penggunaan :
1. sudo apt-get update
2. sudo apt-get install -y git
3. git clone https://github.com/d213honeynet/honeypot/
4. cd honeypot/
5. chmod +x honeypot*
Ubah Hpfeeds setting server dan ident secret
6. ./honeypot.sh
7. sudo docker-compose up
8. sudo cp cowrie/cowrie.cfg /var/lib/docker/volumes/honeypot_cowrie-etc/_data
