
cd ~
if [ -f ~/GitHubDesktop-linux1.deb ]; then
    echo "File exists.redownloading..."
    sudo rm -rf ~/GitHubDesktop-linux1.deb
    sudo wget -q --show-progress --output-document=$HOME/GitHubDesktop-linux1.deb https://github.com/shiftkey/desktop/releases/download/release-3.3.1-linux1/GitHubDesktop-linux-amd64-3.3.1-linux1.deb
else 
    echo "File does not exist."
    sudo wget -q --show-progress --output-document=$HOME/GitHubDesktop-linux1.deb https://github.com/shiftkey/desktop/releases/download/release-3.3.1-linux1/GitHubDesktop-linux-amd64-3.3.1-linux1.deb
fi
sudo apt-get -y install gdebi-core 
yes | sudo gdebi GitHubDesktop-linux1.deb
