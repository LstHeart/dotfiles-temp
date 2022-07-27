#!/bin/bash
# It happens after updateContentCommand and once the dev container has been assigned to a user for the first time

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand has been executed...'
echo 'current-dir:' `pwd`

# ln -sf $PWD/.devcontainer/config $HOME/config && set +x

# setup fish
export SCRIPTS_DIR="$PWD/scripts"
[ -s "$SCRIPTS_DIR/setup_fish.fish" ] && fish "$SCRIPTS_DIR/setup_fish.fish"