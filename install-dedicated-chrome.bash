

sudo apt -y --purge remove google-chrome-stable

sudo apt-get -y install gdebi-core 

if [ -f ~/Downloads/google-chrome-stable_109.0.5414.74-1_amd64.deb ]; then
    sudo rm -rf ~/Downloads/google-chrome-stable_109.0.5414.74-1_amd64.deb
    echo "File exists. redownloading..."
    sudo wget -q --show-progress --output-document=$HOME/Downloads/google-chrome-stable_amd64.deb https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_109.0.5414.74-1_amd64.deb
else 
    echo "File does not exist."
    sudo wget -q --show-progress --output-document=$HOME/Downloads/google-chrome-stable_amd64.deb https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_109.0.5414.74-1_amd64.deb
yes | sudo gdebi ~/Downloads/google-chrome-stable_amd64.deb


if [ -f ~/Downloads/chromedriver_linux64.zip ]; then
    sudo rm -rf ~/Downloads/google-chrome-stable_109.0.5414.74-1_amd64.deb
    echo "File exists. redownloading..."
    sudo wget -q --show-progress --output-document=$HOME/Downloads/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/109.0.5414.74/chromedriver_linux64.zip
else 
    echo "File does not exist."
    sudo wget -q --show-progress --output-document=$HOME/Downloads/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/109.0.5414.74/chromedriver_linux64.zip
fi
mkdir ~/julo
mkdir ~/julo/github
mkdir ~/julo/github/env-setup
unzip -d ~/julo/github/env-setup ~/Downloads/chromedriver_linux64.zip
