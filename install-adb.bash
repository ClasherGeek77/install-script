#!/bin/bash

if [ -f /usr/bin/adb ]; then
    echo "File exists."
else 
    echo "File does not exist."
    sudo wget --output-document=/usr/bin/adb https://raw.githubusercontent.com/ClasherGeek77/install-script/main/adb41
fi
sudo chmod +x ~/.adb41
echo 'export ADB="/usr/bin/adb"' >> ~/.bashrc
exec "$SHELL"
