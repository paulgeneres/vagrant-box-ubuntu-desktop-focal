#!/bin/bash

echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

apt-get update

apt-get -y remove unattended-upgrades

apt-get -y upgrade

apt-get -y autoremove

apt-get -y install openssh-server

apt-get -y install dconf-editor

apt-get -y install gnome-tweaks

apt-get -y install mc
