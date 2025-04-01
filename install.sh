#!/bin/bash

apt -y update
apt-get -y upgrade

apt install -y ripgrep
apt install -y git
apt install -y luarocks
apt install -y neovim-runtime
mkdir temp_delete

if [ ! $(which nvim) ]; then
    echo "Can't find NeoVIM, installing now..."
    wget -P ./temp_delete/ https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
    tar -xvf ./temp_delete/nvim-linux-x86_64.tar.gz -C ./temp_delete

    echo "Moving to /bin/nvim/ and Aliasing..."
    cp ./temp_delete/nvim-linux-x86_64/bin/nvim /bin/nvim
    echo 'alias vim="nvim"'

    nvim
fi

