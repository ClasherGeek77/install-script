
sudo apt-get update

sudo apt install clang -y

exec "$SHELL"
source ~/.bashrc

if CC=clang pyenv install 3.6.9; then
    echo "Install succeeded"
    pyenv global 3.6.9
    pyenv virtualenv 3.6.9 julo_pytest_3.6.9
elif pyenv install 3.6.9 ; then
    echo "Install succeeded"
    pyenv global 3.6.9
    pyenv virtualenv 3.6.9 julo_pytest_3.6.9
elif env CC=gcc-10 pyenv install 3.6.9; then
    echo "Install succeeded"
    pyenv global 3.6.9
    pyenv virtualenv 3.6.9 julo_pytest_3.6.9
elif env CC=gcc-11 pyenv install 3.6.9; then
    echo "Install succeeded"
    pyenv global 3.6.9
    pyenv virtualenv 3.6.9 julo_pytest_3.6.9
fi
exec "$SHELL"
source ~/.bashrc
