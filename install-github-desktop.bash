#!/bin/bash

cd ~
if [ -f ~/GitHubDesktop-linux-3.2.1-linux1.deb ]; then
    echo "File exists."
else 
    echo "File does not exist."
    sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.2.1-linux1/GitHubDesktop-linux-3.2.1-linux1.deb
fi
sudo apt-get install gdebi-core 
yes | sudo gdebi GitHubDesktop-linux-3.2.1-linux1.deb
