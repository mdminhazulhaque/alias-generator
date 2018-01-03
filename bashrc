#!/bin/bash

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
else
    export PS1="\[\e[1;32m\]\w\[\e[m\]\[\e[1;33m\] >\[\e[m\] "
fi

if [ -f "/home/minhaz/.dotfiles/aliases" ]; then
    . "/home/minhaz/.dotfiles/aliases"
fi

# export ANDROID_HOME=/work/android/android-sdk
export a=192.168.11
export m=f8:b5:68:a0
