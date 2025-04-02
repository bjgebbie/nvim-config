#!/bin/bash

apt -y update
apt-get -y upgrade

if [ ! $(which ripgrep) ]; then
    apt install ripgrep -y 
fi

if [ ! $(which git) ]; then
    apt install git -y 
fi

if [ ! $(which luarocks) ]; then
    apt install luarocks -y
fi

if [ ! $(which neovim-runtime) ]; then
    apt install neovim-runtime -y
fi

if [ ! $(which node) ]; then
    apt install nodejs npm -y
fi

npm i -g typescript typescript-language-server 
npm i -g vscode-langservers-extracted

if [ ! $(which nvim) ]; then
    echo "Can't find NeoVIM, installing now..."
    wget -P /opt https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
    tar -xvf /opt/nvim-linux-x86_64.tar.gz -C /opt

    echo "Moving to /bin/nvim/ and Aliasing..."
    ln -s /opt/nvim-linux-x86_64/bin/nvim /bin/nvim
    echo "alias vim=\"nvim\"" >> ~/.bashrc

    vim
fi

