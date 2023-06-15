#!/bin/bash

cd ~
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.2.1-linux1/GitHubDesktop-linux-3.2.1-linux1.deb
sudo apt-get install gdebi-core 
yes | sudo gdebi GitHubDesktop-linux-3.2.1-linux1.deb
