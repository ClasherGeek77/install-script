sudo apt-get --quiet update --yes
sudo apt-get -y install virtualbox

cd ~

if [ -f ~/genymotion.bin ]; then
    echo "File exists."
else 
    echo "File does not exist."
    wget --output-document=genymotion.bin https://dl.genymotion.com/releases/genymotion-3.4.0/genymotion-3.4.0-linux_x64.bin

sudo chmod +x ~/genymotion.bin
yes | sudo ./genymotion.bin

