export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

# ps1 prompt line
export PS1="\[$(tput setaf 2)\][⚡ \w]ϕ $(tput sgr0)\]"

set -o vi
export FZF_DEFAULT_COMMAND='find . -type f ! -path "*/\.git/*" ! -path "*/node_modules/*"'

if [ $(command -v rlwrap) ]; then
  alias node='NODE_NO_READLINE=1 rlwrap node'
fi

export EDITOR="nvim"

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=50
HISTFILESIZE=50
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -A'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#custom commands at start
