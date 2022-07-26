#!/bin/bash

if [ ! -s /home/linuxbrew/.linuxbrew/bin/brew ]; then
    sudo NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # sudo apt-get install build-essential -y
    brew install gcc lua luarocks
fi