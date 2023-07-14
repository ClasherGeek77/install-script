
sudo apt-get --quiet update --yes

sudo apt-get -y install git

sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev --yes

exec "$SHELL"
source ~/.bashrc

if [[ -d $HOME/.pyenv ]]; then
    echo "pyenv exists. redownloading..."
    sudo rm -rf ~/.pyenv
    curl https://pyenv.run | bash
else 
    echo "pyenv does not exist."
    curl https://pyenv.run | bash
fi

cd ~/.pyenv && src/configure && make -C src

if grep -wq "command -v pyenv" ~/.bashrc; then 
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
source ~/.bashrc
