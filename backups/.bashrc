set -o vi

export EDITOR="nvim"
export PATH="/usr/local/bin:/usr/games:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"
export PS1="\[$(tput setaf 2)\][⚡ \w]ϕ $(tput sgr0)\]"
export FZF_DEFAULT_COMMAND='find . -type f ! -path "*/\.git/*" ! -path "*/node_modules/*"'

# Pfetch Config
export PF_INFO="ascii title os host uptime pkgs memory shell"
export PF_ASCII="KISS"

if [ $(command -v rlwrap) ]; then
  alias node='NODE_NO_READLINE=1 rlwrap node'
fi

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

HISTCONTROL=ignoreboth
HISTSIZE=50
HISTFILESIZE=50

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -A'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# custom commands at start
figlet 'ayushman tripathy'
