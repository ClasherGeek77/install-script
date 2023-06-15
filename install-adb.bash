#!/bin/bash

if [ -f ~/.adb41 ]; then
    echo "File exists."
else 
    echo "File does not exist."
    wget --output-document=.adb41 https://raw.githubusercontent.com/ClasherGeek77/install-script/main/adb41
fi
sudo chmod +x ~/.adb41
echo 'export ADB="$HOME/.adb41"' >> ~/.bashrc
