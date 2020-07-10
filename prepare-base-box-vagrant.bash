#!/bin/bash

mkdir -p ~/.ssh
chmod 700 ~/.ssh
wget -O - https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub >> ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys

# disable screen time outs
gsettings set org.gnome.desktop.session idle-delay 0

# remove default favorite apps and add terminal app to favorites
# the bar acts sketchy when it's completely empty (2020-07-01)
gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop']"

# set a black background
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'

# remove default desktop icons
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# set dark gtk theme
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru'
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'

cat /dev/null > ~/.bash_history
history -c
