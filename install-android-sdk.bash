#!/bin/bash

echo 'export ANDROID_HOME="$HOME/android-sdk-29"' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/tools/bin"' >> ~/.bashrc

sudo apt-get --quiet update --yes
sudo apt-get install openjdk-8-jdk
sudo apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
cd ~
if [ -f ~/android-sdk.zip ]; then
    echo "File exists."
else 
    echo "File does not exist."
    wget --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
fi
sudo unzip -d $HOME/android-sdk-29 android-sdk.zip
sudo echo y | android-sdk-29/tools/bin/sdkmanager "platform-tools" "platforms;android-29" >/dev/null
sudo echo y | android-sdk-29/tools/bin/sdkmanager "build-tools;29.0.3" >/dev/null
exec "$SHELL"
sdkmanager --install "platform-tools" "platforms;android-29" "build-tools;29.0.2" "emulator"
exec "$SHELL"