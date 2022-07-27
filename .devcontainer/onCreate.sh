#!/bin/bash

# the script execute when a dev container is created (It will execute at the first time)
# ENVS:
# $CODESPACES: TRUE
# $CODESPACE_NAME: lstheart-dotfiles-w967qx7v3grx4
# $HOSTNAME: codespaces-9a306a
# $HOSTTYPE: x86_64
# $RepositoryName: dotfiles

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand has been executed...'
echo 'current-dir:' `pwd`

# setup nvm
export SCRIPTS_DIR="$PWD/scripts"
[ -s "$SCRIPTS_DIR/setup_nvm.sh" ] && \. "$SCRIPTS_DIR/setup_nvm.sh"

# setup fzf
[ -s "$SCRIPTS_DIR/setup_fzf.sh" ] && \. "$SCRIPTS_DIR/setup_fzf.sh"

# install optional soft by homebrew
brew install \
    lua luarocks \
    gh git-lfs \
    ranger