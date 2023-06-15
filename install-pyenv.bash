#!/bin/bash

sudo apt-get --quiet update --yes

sudo apt-get -y install git

exec "$SHELL"

if [ -d $HOME/.pyenv ]; then
    echo "pyenv exists. redownloading..."
    sudo rm -rf ~/.pyenv
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
else 
    echo "pyenv does not exist."
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

cd ~/.pyenv && src/configure && make -C src

if grep -wq "export PYENV_ROOT" ~/.bashrc; then 
    echo "Export Exists" 
else 
    echo "Export Does not exist"
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
fi

if [[ -d ~/.profile ]]
then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
    echo 'eval "$(pyenv init -)"' >> ~/.profile
fi

if [[ -d ~/.bash_profile ]]
then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
fi

exec "$SHELL"