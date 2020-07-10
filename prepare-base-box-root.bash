#!/bin/bash

echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

apt-get update
apt-get -y remove unattended-upgrades
apt-get -y upgrade
apt-get -y install openssh-server
apt-get -y autoremove

apt-get clean

cat /dev/null > ~/.bash_history
history -c
