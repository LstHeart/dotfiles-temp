#!/bin/bash

if [ -s /home/linuxbrew/.linuxbrew/bin/brew ]; then
    brew install fzf && echo y y y| $(brew --prefix)/opt/fzf/install
else
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    echo y y y| ~/.fzf/install
fi