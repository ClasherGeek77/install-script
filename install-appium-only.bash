
sudo apt-get --quiet update --yes

sudo apt remove nodejs npm -y
curl -s https://deb.nodesource.com/setup_18.x | sudo bash
sudo apt-get update --yes
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo chown -R $USER /usr/local
exec "$SHELL"
source ~/.bashrc
sudo npm install --location=global appium
npm install --location=global appium
sudo appium driver install --source=npm appium-uiautomator2-driver
appium driver install --source=npm appium-uiautomator2-driver
exec "$SHELL"
source ~/.bashrc

exec "$SHELL"
source ~/.bashrc
