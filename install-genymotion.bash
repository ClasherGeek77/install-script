
cd ~
if [ -f ~/vbox6-linux1.deb ]; then
    echo "File exists.redownloading..."
    sudo rm -rf ~/vbox6-linux1.deb
    sudo wget -q --show-progress --output-document=$HOME/vbox6-linux1.deb https://download.virtualbox.org/virtualbox/6.1.50/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
else 
    echo "File does not exist."
    sudo wget -q --show-progress --output-document=$HOME/vbox6-linux1.deb https://download.virtualbox.org/virtualbox/6.1.50/virtualbox-6.1_6.1.50-161033~Ubuntu~jammy_amd64.deb
fi

sudo apt-get -y install gdebi-core 
yes | sudo gdebi vbox6-linux1.deb

cd ~

if [ -f ~/genymotion.bin ]; then
    echo "File exists. Redownloading..."
    sudo rm -rf ~/genymotion.bin
    wget -q --show-progress --output-document=genymotion.bin https://dl.genymotion.com/releases/genymotion-3.4.0/genymotion-3.4.0-linux_x64.bin
else 
    echo "File does not exist."
    wget -q --show-progress --output-document=genymotion.bin https://dl.genymotion.com/releases/genymotion-3.4.0/genymotion-3.4.0-linux_x64.bin
fi
sudo chmod +x ~/genymotion.bin
yes | sudo ~/genymotion.bin
exec "$SHELL"
source ~/.bashrc
