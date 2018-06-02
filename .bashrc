# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.aliases
source ~/.functions
source ~/.git-completion.bash
test -e ~/.secrets && source ~/.secrets

export PS1="\[$(tput setaf 6)\][\u@\h \w]\\$ \[$(tput sgr0)\]"

export HISTSIZE='3000'
export HISTTIMEFORMAT='%F %T '
shopt -s histverify # don't immediately execute commands from history but copy them onto command line
shopt -s histappend # append to bash history instead of overwriting

# name iTerm tabs after current directory (https://gist.github.com/phette23/5270658)
if [ $ITERM_SESSION_ID ]; then
  unset PROMPT_COMMAND
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(rbenv init -)"