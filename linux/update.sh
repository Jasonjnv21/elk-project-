#!/bin/bash
 # update all available packages
 apt-get update -y 
 # upgrade all available packages 
 apt-get upgrade -y

 # install new packages and uninstal old ones 
 apt full-upgrade -y 
 
 # remove unused package
 apt autoremove --purge -y


