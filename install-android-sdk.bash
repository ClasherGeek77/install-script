
if grep -wq "export ANDROID_HOME=" ~/.bashrc; then 
    echo "Export Exists" 
else 
    echo "Does not exist"
    echo 'export ANDROID_HOME="$HOME/android-sdk"' >> ~/.bashrc
    echo 'export ANDROID_SDK_ROOT="$HOME/android-sdk"' >> ~/.bashrc
    echo 'export PATH="$PATH:$ANDROID_HOME/tools/bin"' >> ~/.bashrc
    echo 'export PATH="$PATH:$ANDROID_HOME/platform-tools"' >> ~/.bashrc
fi
exec "$SHELL"
source ~/.bashrc
sudo apt-get --quiet update --yes
sudo apt-get --quiet install openjdk-11-jdk --yes
sudo apt-get --quiet install --yes wget tar unzip lib32stdc++6 lib32z1
cd ~
if [ -f ~/android-sdk.zip ]; then
    sudo rm -rf ~/android-sdk.zip
    echo "File exists. redownloading..."
    wget -q --show-progress --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip
else 
    echo "File does not exist."
    wget -q --show-progress --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip
fi
sudo rm -rf $HOME/android-sdk
unzip android-sdk.zip -d $HOME/android-sdk
exec "$SHELL"
source ~/.bashrc
sudo chmod 777 $HOME/android-sdk
sudo chown $USER:$USER $ANDROID_HOME -R
exec "$SHELL"
source ~/.bashrc
yes | sudo $HOME/android-sdk/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
yes | sudo $HOME/android-sdk/cmdline-tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --install "platform-tools" "platforms;android-34" "build-tools;34.0.0"
exec "$SHELL"
source ~/.bashrc
