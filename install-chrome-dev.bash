#!/bin/bash

sudo add-apt-repository -y ppa:flatpak/stable
sudo apt update
sudo apt -y install flatpak
sudo apt -y install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
exec "$SHELL"
flatpak install flathub com.google.ChromeDev
flatpak run com.google.ChromeDev