
sudo add-apt-repository -y ppa:flatpak/stable
sudo apt-get --quiet update --yes
sudo apt -y install flatpak
sudo apt -y install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
exec "$SHELL"
source ~/.bashrc
flatpak install -y flathub com.google.ChromeDev
flatpak run com.google.ChromeDev
