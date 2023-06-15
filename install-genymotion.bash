sudo apt update
sudo apt-get -y install virtualbox

cd ~
wget --output-document=genymotion.bin https://dl.genymotion.com/releases/genymotion-3.4.0/genymotion-3.4.0-linux_x64.bin
chmod +x ~/genymotion.bin
yes | sudo ~/genymotion.bin