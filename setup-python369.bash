#!/bin/bash
sudo apt-get update; sudo apt-get install make build-essential gcc libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
if pyenv install 3.6.9 ; then
    echo "Install succeeded"
else
    echo "Install Failed, Try another install"
    sudo apt install clang -y
    CC=clang pyenv install 3.6.9
fi
pyenv global 3.6.9
pyenv virtualenv 3.6.9 julo_pytest_3.6.9