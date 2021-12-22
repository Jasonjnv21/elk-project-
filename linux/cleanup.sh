#!/bin/bash
# remove files in /tmp and /var/tmp
rm -r /tmp/* 
rm -r /var/tmp/* 

# clear apt cache
apt-get clean -y 

rm -rvf /home/sysadmin/.cache/thumbnail
rm -rvf /home/instructor/.cache/thumbnail


