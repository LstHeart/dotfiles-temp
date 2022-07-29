#!/usr/bin/env bash

function timeNow(){
  echo `date +"[%Y/%m/%d %H:%M:%S] Dotfiles"`
}
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LOG_FILE='dotfiles.log'

sudo chmod -R 755 ./scripts/ \
 && (timeNow && echo "Dotfiles will begin✨")  >$LOG_FILE
echo "[working-dir]: $DIR" \ >>$LOG_FILE

(timeNow && echo "copy scripts") >>$LOG_FILE
cp -afuv $DIR/scripts $HOME
(timeNow && echo "copy scripts done🎉") >>$LOG_FILE

(timeNow && echo "copy configs") >>$LOG_FILE
# cp -afuv $DIR/configs/bash/.* $HOME
cp -afuv $DIR/configs/fish/* $HOME/.config/fish
(timeNow && echo "copy configs done🎉") >>$LOG_FILE

# active profile
source ~/.bash_profile

(timeNow && echo 'Dotfiles done🎉') >>$LOG_FILE
exit