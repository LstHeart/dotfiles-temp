#!/bin/bash

brew install fish

# chsh -s /usr/local/bin/fish
# or below
echo /usr/local/bin/fish | sudo tee -a /etc/shells

curl -sL https://git.io/fisher  | source \
    && fisher install jorgebucaran/fisher \
    && fisher install oh-my-fish/oh-my-fish \
    && fisher install jorgebucaran/nvm.fish \
    && fisher install skywind3000/z.lua