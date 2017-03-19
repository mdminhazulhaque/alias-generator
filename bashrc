# ~/.bashrc: executed by bash(1) for non-login shells.

HISTCONTROL=ignoredups:erasedups
HISTSIZE=5000
HISTFILESIZE=5000

shopt -s histappend
shopt -s expand_aliases
shopt -s checkwinsize

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ $USER == "root" ]
then
    export PS1="\[\e[1;31m\]\w\[\e[m\]\[\e[1;33m\] >\[\e[m\] "
    alias uart1152="picocom -b115200 /dev/ttyUSB0"
    alias uart5760="picocom -b57600 /dev/ttyUSB0"
    alias nets="netstat -plutn"
    alias teamviewerd="/opt/teamviewer/tv_bin/teamviewerd"
else
    export PS1="\[\e[1;32m\]\w\[\e[m\]\[\e[1;33m\] >\[\e[m\] "
    export VPS=$(cat /etc/hosts | grep aplvps | awk '{print $1}')
fi

if [ -f "$HOME/.dotfiles/aliases" ]; then
    . "$HOME/.dotfiles/aliases"
fi
