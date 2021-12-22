#!/bin/bash
mkdir -p /var/backup
tar -cvf /var/backup/home.tar ~/
cp /var/backup/home.tar /var/backup/home.10132021.tar 
# list /var/backup
ls -lah /var/backup > /var/backup/file_report
#print how much free memory remains on host
free -h > var/backup/memory_report

