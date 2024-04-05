
sudo apt-get --quiet update --yes

sudo apt-get -y install libfuse2
sudo apt-get -y install fuse

sudo modprobe -v fuse
sudo addgroup fuse
sudo adduser $USER fuse

curl https://raw.githubusercontent.com/ClasherGeek77/install-script/main/install-appium-only.bash | bash
exec "$SHELL"
source ~/.bashrc

cd ~
if [[ -d /opt/appium-inspector ]]
then
    echo "Instalation exists. redownloading..."
    sudo rm -rf /opt/appium-inspector
    sudo rm -rf ~/.local/share/applications/appium-inspector.desktop
fi
mkdir ~/appium-inspector

cd ~/appium-inspector

wget -q --show-progress --output-document=Appium-Inspector-linux.AppImage https://github.com/appium/appium-inspector/releases/download/v2023.6.1/Appium-Inspector-linux-2023.6.1.AppImage
wget -q --show-progress --output-document=appiuminspector.png https://github.com/ClasherGeek77/install-script/blob/main/appiuminspector.png?raw=true
wget -q --show-progress --output-document=appium-inspector.desktop https://raw.githubusercontent.com/ClasherGeek77/install-script/main/appium-inspector.desktop

sudo mv ~/appium-inspector/appium-inspector.desktop ~/.local/share/applications
sudo mv ~/appium-inspector /opt/

sudo chmod a+x /opt/appium-inspector/Appium-Inspector-linux.AppImage

sudo apt-get install --reinstall gnome-control-center -y

exec "$SHELL"
source ~/.bashrc
