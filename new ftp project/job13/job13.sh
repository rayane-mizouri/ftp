#./bin/bash

groupadd ftpUsers

while IFS=, read -r ID Prenom Nom MDP Rôle ; do

        Username=$Nom$Prenom
        adduser -p $(openssl passwd -1 $MDP) $Username
	usermod -aG ftpusers $vsername

        if [ $Rôle = 'Admin' ];
then
        usermod -aG sudo $Username
        fi

done < ftpuserlist.csv

cat proftpd.conf > /etc/proftpd/proftp.conf
