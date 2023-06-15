#!/usr/bin/env bash
set -e

cd ~
apt-get --quiet update --yes
apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
wget --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
unzip -d $HOME/android-sdk-29 android-sdk.zip
echo y | android-sdk-29/tools/bin/sdkmanager "platform-tools" "platforms;android-29" >/dev/null
echo y | android-sdk-29/tools/bin/sdkmanager "build-tools;29.0.3" >/dev/null
echo 'export ANDROID_HOME=$HOME/android-sdk-29"' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools/' >> ~/.bashrc


