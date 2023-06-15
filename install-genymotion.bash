sudo apt update
sudo apt-get -y install virtualbox

cd ~
sudo wget --output-document=genymotion.bin https://dl.genymotion.com/releases/genymotion-3.4.0/genymotion-3.4.0-linux_x64.bin
sudo chmod +x ~/genymotion.bin
sudo yes | sudo ~/genymotion.bin