#!/bin/bash
if pyenv install 3.6.9 ; then
    echo "Install succeeded"
else
    echo "Install Failed, Try another install"
    sudo apt install clang -y
    CC=clang pyenv install 3.6.9
fi
pyenv global 3.6.9
pyenv virtualenv 3.6.9 julo_pytest_3.6.9