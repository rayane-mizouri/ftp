#./bin/bash

sudo apt -y install proftpd net-tools ; sudo service proftpd start ; sudo apt upgrade

mkdir -p /etc/proftpd/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -out /etc/proftpd/ssl/proftpd-rsa.pem -keyout /etc/proftpd/ssl/proftpd-key.pem
-subj "/C=''/ST=''/L=''/O=''/OU=''/CN=''" 
chmod 760 /etc/proftpd/ssl/proftpd-key.pem
cat proftpd.conf > /etc/proftpd/proftpd.conf
sudo service proftpd restart
