sudo apt-get --quiet update --yes

sudo apt-get -y install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

exec "$SHELL"
source ~/.bashrc

sudo apt-get --quiet update --yes

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8

exec "$SHELL"
source ~/.bashrc

sudo apt-get --quiet update --yes

exec "$SHELL"
source ~/.bashrc

sudo apt-get install docker-ce=5:20.10.24~3-0~ubuntu-jammy docker-ce-cli=5:20.10.24~3-0~ubuntu-jammy containerd.io docker-buildx-plugin docker-compose-plugin

exec "$SHELL"
source ~/.bashrc

sudo apt-get -y install dbus-user-session

exec "$SHELL"
source ~/.bashrc

sudo apt-get -y install docker-ce-rootless-extras

exec "$SHELL"
source ~/.bashrc

