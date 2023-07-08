#!/bin/bash
sudo -s
sudo apt-get --quiet update --yes
exec bash
sudo apt-get -y install ca-certificates curl gnupg
exec bash
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg -y --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

exec bash

sudo apt-get --quiet update --yes
exec bash
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
exec bash
sudo apt-get -y install dbus-user-session

exec bash

sudo apt-get --quiet update --yes
exec bash
sudo apt-get -y install docker-ce-rootless-extras
exec bash

