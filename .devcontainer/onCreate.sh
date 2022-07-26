#!/bin/bash

# the script execute when a dev container is created (It will execute at the first time)
echo "onCreateCommand has been executed!"
# ENVS:
# $CODESPACES: TRUE
# $CODESPACE_NAME: lstheart-dotfiles-w967qx7v3grx4
# $HOSTNAME: codespaces-9a306a
# $HOSTTYPE: x86_64
# $RepositoryName: dotfiles


# setup nvm
export SCRIPTS_DIR="$PWD/scripts"
[ -s "$SCRIPTS_DIR/setup_nvm.sh" ] && \. "$SCRIPTS_DIR/setup_nvm.sh"

# setup homebrew
[ -s "$SCRIPTS_DIR/setup_homebrew.sh" ] && \. "$SCRIPTS_DIR/setup_homebrew.sh"

# setup fzf
# brew install fzf
# [ -s "$SCRIPTS_DIR/setup_fzf.sh" ] && \. "$SCRIPTS_DIR/setup_fzf.sh"

# setup fish
[ -s "$SCRIPTS_DIR/setup_fish.sh" ] && \. "$SCRIPTS_DIR/setup_fish.sh"
