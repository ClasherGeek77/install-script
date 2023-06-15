#!/bin/bash

echo 'export ANDROID_HOME="$HOME/android-sdk-29"' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/tools/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/platform-tools"' >> ~/.bashrc

sudo apt-get --quiet update --yes
sudo apt-get --quiet install openjdk-8-jdk --yes
sudo apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
cd ~
if [ -f ~/android-sdk.zip ]; then
    sudo rm -rf ~/android-sdk.zip
    echo "File exists."
else 
    echo "File does not exist."
    wget --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
fi

sudo unzip -d $HOME/android-sdk-29 android-sdk.zip
exec "$SHELL"
sudo chmod 777 $ANDROID_HOME -
yes | sdkmanager --sdk_root=${ANDROID_HOME} --licenses
yes | sdkmanager --sdk_root=${ANDROID_HOME} --install "platform-tools" "platforms;android-29" "build-tools;29.0.2"
exec "$SHELL"