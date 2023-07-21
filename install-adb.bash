
if [ -f /usr/bin/adb ]; then
    echo "File exists. redownloading..."
    sudo rm -rf /usr/bin/adb
    sudo wget -q --show-progress --output-document=/usr/bin/adb https://raw.githubusercontent.com/ClasherGeek77/install-script/main/adb41
else 
    echo "File does not exist"
    sudo wget -q --show-progress --output-document=/usr/bin/adb https://raw.githubusercontent.com/ClasherGeek77/install-script/main/adb41
fi
sudo chmod +x /usr/bin/adb
exec "$SHELL"
source ~/.bashrc
