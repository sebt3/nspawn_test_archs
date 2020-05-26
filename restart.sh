#!/bin/bash

for i in 1 2 3;do 
	echo dgfip0$i; 
	ssh root@192.168.2.20$i "systemctl stop systemd-nspawn@infra; rm -rf /var/lib/machines/infra /var/lib/machines/.#infra.lck";
	ssh-keygen -f "/home/seb/.ssh/known_hosts" -R "[192.168.2.20$i]:2222";
	ssh root@192.168.2.20$i "dd if=/dev/zero of=/dev/vdb bs=1M count=100"; 
done

