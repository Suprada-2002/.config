export ZSH="/home/ayushmantripathy2004/.oh-my-zsh"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.local/bin"

ZSH_THEME="simple"

plugins=()

source $ZSH/oh-my-zsh.sh

set -o vi
export FZF_DEFAULT_COMMAND='find . -type f ! -path "*/\.git/*" ! -path "*/node_modules/*"'

if [ $(command -v rlwrap) ] ; then
  alias node='NODE_NO_READLINE=1 rlwrap node'
fi

alias vim='nvim'
alias la='ls -a'
alias cl='clear'

# cd command
alias cde="cd /mnt/external/"
alias cdb='cd ~/.local/bin'
alias cdc='cd ~/.config'
alias cdt='cd ~/tmp'
alias cdh='cd /mnt/chromeos/MyFiles/'
alias cdm='cd /mnt/chromeos/MyFiles/musicDB'
alias cdn='cd ~/.local/node-js'
alias cdd="cd /mnt/chromeos/MyFiles/Downloads"
alias cdr='cd /mnt/chromeos/removable'
