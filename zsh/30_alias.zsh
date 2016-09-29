
alias where="command -v"
alias j="jobs -l"

case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -G -w"
    ;;
linux*)
    alias ls="ls --color"
    ;;
esac

alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"

alias du="du -h"
alias df="df -h"

alias su="su -l"

#alias g++="/opt/local/bin/g++"
#alias gcc="/opt/local/bin/gcc"
alias reload="source ~/.zshrc"
alias init-docker="source ~/.docker_profile"
alias cwork="cd /Users/sumiya/Documents/workspace/"
alias athene="ssh tohyama@athene.ci.seikei.ac.jp"
alias ubuntu="ssh sumiya@192.168.11.52"
alias naskof="ssh sumiya@192.168.11.50"
alias tmux-list="tmux list-session"
alias tmux-attach="tmux attach-session -t"

## load user .zshrc configuration file
#
[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
