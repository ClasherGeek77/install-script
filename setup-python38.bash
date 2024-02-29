
sudo apt-get update

sudo apt install clang -y

exec "$SHELL"
source ~/.bashrc

if CC=clang pyenv install 3.8; then
    echo "Install succeeded"
    pyenv global 3.8
    pyenv virtualenv 3.8 julo_pytest_3.8
elif pyenv install 3.8 ; then
    echo "Install succeeded"
    pyenv global 3.8
    pyenv virtualenv 3.8 julo_pytest_3.8
elif env CC=gcc-10 pyenv install 3.8; then
    echo "Install succeeded"
    pyenv global 3.8
    pyenv virtualenv 3.8 julo_pytest_3.8
elif env CC=gcc-11 pyenv install 3.8; then
    echo "Install succeeded"
    pyenv global 3.8
    pyenv virtualenv 3.8 julo_pytest_3.8
fi
exec "$SHELL"
source ~/.bashrc
