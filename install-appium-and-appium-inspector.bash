#!/bin/bash

sudo apt-get --quiet update --yes

sudo apt-get -y install fuse libfuse2

sudo modprobe -v fuse
sudo addgroup fuse
sudo adduser $USER fuse

sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo chown -R $USER /usr/local
exec "$SHELL"
sudo npm install -g n
exec "$SHELL"
sudo n latest
exec "$SHELL"
sudo npm install -g npm@latest
exec "$SHELL"
sudo npm install -g appium@1.22.3
exec "$SHELL"

cd ~
if [[ -d /opt/appium-inspector ]]
then
    echo "Instalation exists. redownloading..."
    sudo rm -rf /opt/appium-inspector
    sudo rm -rf ~/.local/share/applications/appium-inspector.desktop
fi
mkdir appium-inspector

cd ~/appium-inspector

sudo wget -q --show-progress --output-document=Appium-Inspector-linux.AppImage https://github.com/appium/appium-inspector/releases/download/v2023.6.1/Appium-Inspector-linux-2023.6.1.AppImage
sudo wget -q --show-progress --output-document=appiuminspector.png https://github.com/ClasherGeek77/install-script/blob/main/appiuminspector.png?raw=true
sudo wget -q --show-progress --output-document=appium-inspector.desktop https://raw.githubusercontent.com/ClasherGeek77/install-script/main/appium-inspector.desktop

sudo chmod a+x ~/appium-inspector/Appium-Inspector-linux.AppImage

sudo mv ~/appium-inspector/appium-inspector.desktop ~/.local/share/applications
sudo mv ~/appium-inspector /opt/

sudo chmod a+x /opt/appium-inspector/Appium-Inspector-linux.AppImage

exec "$SHELL"
