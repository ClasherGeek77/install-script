#!/bin/bash

exec "$SHELL"
source ~/.bashrc
if grep -wq "pyenv virtualenv-init" ~/.bashrc; then 
    echo "Export Exists" 
else 
    echo "Does not exist"
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
fi

sudo apt-get --quiet update --yes
sudo apt-get -y install git

exec "$SHELL"
source ~/.bashrc

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

exec "$SHELL"
source ~/.bashrc
