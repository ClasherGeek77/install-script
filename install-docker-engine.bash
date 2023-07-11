#!/bin/bash
sudo -s
sudo apt-get --quiet update --yes
exec "$SHELL"
sudo apt-get -y install ca-certificates curl gnupg
exec "$SHELL"
sudo install -m 0755 -d /etc/apt/keyrings
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

exec "$SHELL"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8

sudo apt-get --quiet update --yes
exec "$SHELL"
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
exec "$SHELL"
sudo apt-get -y install dbus-user-session

exec "$SHELL"

sudo apt-get --quiet update --yes
exec "$SHELL"
sudo apt-get -y install docker-ce-rootless-extras
exec "$SHELL"

