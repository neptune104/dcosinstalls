#!/bin/bash

IP_LIST="192.168.0.181 192.168.0.182 192.168.0.183 192.168.0.184 192.168.0.185 192.168.0.186 192.168.0.187"
Password=kbsys1234
for Node_ip in ${IP_LIST}
do
	echo ${Node_ip}
	sshpass -p ${Password} scp -oStrictHostKeyChecking=no ./install_script.sh root@${Node_ip}:/root/install_script.sh
	sshpass -p ${Password} ssh -oStrictHostKeyChecking=no root@${Node_ip} chmod 775 /root/install_script.sh
	#sshpass -p ${Password} ssh -oStrictHostKeyChecking=no root@${Node_ip} /root/install_script.sh
done
