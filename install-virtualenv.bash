#!/bin/bash

sudo apt-get --quiet update --yes

sudo apt-get -y install git

exec "$SHELL"

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

exec "$SHELL"