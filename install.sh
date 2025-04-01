#!/bin/bash

apt -y update
apt-get -y upgrade

mkir temp_delete
cd temp_delete

if [ ! $(which nvim) ]; then
    echo "Can't find NeoVIM, installing now..."
    wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
    tar -xvf nvim-linux-x86_64

    echo "Moving to /bin/nvim/ and Aliasing..."
    cp nvim-linux-x86_64/bin/nvim /bin/nvim
    echo 'alias vim="nvim"'
fi

cd ../
rm -rf temp_delete

apt install -y rg
apt install -y git
apt install -y luarocks
