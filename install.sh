#!/bin/bash
#!/usr/bin/env bash
function timeNow(){
  echo `date +"[%Y/%m/%d %H:%M:%S] Dotfiles"`
}
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LOG_FILE='dotfiles.log'

sudo chmod -R 755 ./scripts/ \
 && (timeNow && echo "[working-dir]: $DIR, Dotfiles will begin✨")  >$LOG_FILE
echo "[working-dir]: $DIR" \ >>$LOG_FILE

(timeNow && echo "setup git-tool") >>$LOG_FILE
# sh $DIR/scripts/install_git_tool.sh
(timeNow && echo "git-tool done🎉") >>$LOG_FILE

(timeNow && echo "setup nodejs begin") >>$LOG_FILE
# sh $DIR/scripts/tools/install_nvm.sh
(timeNow && echo "nodejs done🎉") >>$LOG_FILE

# echo "copy bashrc"
# cp $DIR/.bashrc $HOME/.bashrc

# echo "copying bash profile"
# timeNow
# cp $DIR/.bash_profile $HOME/.bash_profile

# echo "installing fish 3"
# sh $DIR/scripts/install_fish3.sh

# echo "installing fish config and setthing fish as default shell"
# cp  -r $DIR/fish/ ~/.config/fish
# sudo chsh -s /usr/bin/fish

# active profile
# source ~/.bash_profile

(timeNow && echo 'Dotfiles done🎉') >>$LOG_FILE
exit