#!/bin/bash

sudo apt-get --quiet update --yes

sudo apt-get -y install nodejs
sudo apt-get -y install npm

sudo npm install -g appium
exec "$SHELL"

cd ~
if [[ -d ~/appium-inspector ]]
then
    sudo rm -rf ~/appium-inspector
fi
mkdir appium-inspector

cd ~/appium-inspector

sudo wget --output-document=Appium-Inspector-linux.AppImage https://github.com/appium/appium-inspector/releases/download/v2023.6.1/Appium-Inspector-linux-2023.6.1.AppImage
sudo wget --output-document=appiuminspector.png https://github.com/ClasherGeek77/install-script/blob/main/appiuminspector.png?raw=true
sudo wget --output-document=appium-inspector.dekstop https://raw.githubusercontent.com/ClasherGeek77/install-script/main/appium-inspector.desktop
sudo wget --output-document=emulator.config https://raw.githubusercontent.com/ClasherGeek77/install-script/main/appium-inspector.config


sudo cp ~/appium-inspector
sudo cp ~/appium-inspector/appium-inspector.dekstop ~/.local/share/applications

sudo chmod a+x Appium-Inspector-linux.AppImage

exec "$SHELL"
