#!/bin/bash

if [ -s /home/linuxbrew/.linuxbrew/bin/brew ]; then
    brew install fish
    # curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    # # install plugin
    # fisher install oh-my-fish/oh-my-fish
    # fisher install jorgebucaran/nvm.fish
    # fisher install skywind3000/z.lua
fi

# setup others
# use fish as your default shell
# chsh -s /usr/local/bin/fish
# or below
# echo /usr/local/bin/fish | sudo tee -a /etc/shells