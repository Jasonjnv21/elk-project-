#!/bin/bash
~/research = res
mkdir $res 2> /dev/null 
find / -type f -perm 777 >> ~/research/sys_info.txt
ps -aux | awk -F" " '{print $1, $2, $3, $4, $11}' >> ~/research/sys_info.txt
echo "\nbashscript 10-18-21\n" >> ~/research/sys_info.txt 
echo "\nuname is: $(uname -a)\n" >> ~/research/sys_info.txt
echo "\nhostname ip is: $(hostname -i)\n" >> ~/research/sys_info.txt
echo "\nhostname is $(hostname)\n" >> ~/research/sys_info.txt
echo "\nDNS Servers: $(grep "nameserver\n" /etc/resolv.conf)" >> ~/research/sys_info.txt
echo "\nmemory Info: $(free)\n" >> ~/research/sys_info.txt
echo "\nCPU Info: $(lscpu | grep CPU)\n" >> ~/research/sys_info.txt
echo "\nisk Usage: $(df | head -2)\n" >> ~/research/sys_info.txt
echo "\nLogged in users: $(who -a)\n" >> ~/research/sys_info.txt 
if [ -d $res ] 
then 
	echo "exists" 
else
	mkdir $res

	if [ -f $res/sys_info.txt ] 
	then
		rm $res/sys_info.txt
	fi


		

