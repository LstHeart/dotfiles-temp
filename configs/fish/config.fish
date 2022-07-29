if status is-interactive
    # Commands to run in interactive sessions can go here
end
# hide greeting
set fish_greeting

# use bash_alias
source ~/.bash_aliases

# git-completion
if test -f ~/.git-completion.bash
    source  ~/.git-completion.bash
end