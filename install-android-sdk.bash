
if grep -wq "export ANDROID_HOME=" ~/.bashrc; then 
    echo "Export Exists" 
else 
    echo "Does not exist"
    echo 'export ANDROID_HOME="$HOME/android-sdk-29"' >> ~/.bashrc
    echo 'export ANDROID_SDK_ROOT="$HOME/android-sdk-29"' >> ~/.bashrc
    echo 'export PATH="$PATH:$ANDROID_HOME/tools/bin"' >> ~/.bashrc
    echo 'export PATH="$PATH:$ANDROID_HOME/platform-tools"' >> ~/.bashrc
fi
exec "$SHELL"
source ~/.bashrc
sudo apt-get --quiet update --yes
sudo apt-get --quiet install openjdk-8-jdk --yes
sudo apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
cd ~
if [ -f ~/android-sdk.zip ]; then
    sudo rm -rf ~/android-sdk.zip
    echo "File exists. redownloading..."
    wget -q --show-progress --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
else 
    echo "File does not exist."
    wget -q --show-progress --output-document=android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
fi
sudo rm -rf $HOME/android-sdk-29
unzip android-sdk.zip -d $HOME/android-sdk-29
exec "$SHELL"
source ~/.bashrc
sudo chmod 777 $HOME/android-sdk-29
sudo chown $USER:$USER $ANDROID_HOME -R
exec "$SHELL"
source ~/.bashrc
yes | sudo $HOME/android-sdk-29/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
yes | sudo $HOME/android-sdk-29/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --install "platform-tools" "platforms;android-29" "build-tools;29.0.2"
exec "$SHELL"
source ~/.bashrc