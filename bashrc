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

PATH="/home/minhaz/.dotfiles/bin:$PATH"

# source /home/minhaz/.dotfiles/alias.d/adb.alias
source /home/minhaz/.dotfiles/alias.d/apt.alias
# source /home/minhaz/.dotfiles/alias.d/brew.alias
source /home/minhaz/.dotfiles/alias.d/cd.alias
source /home/minhaz/.dotfiles/alias.d/core.alias
# source /home/minhaz/.dotfiles/alias.d/cups.alias
source /home/minhaz/.dotfiles/alias.d/disk.alias
source /home/minhaz/.dotfiles/alias.d/find.alias
source /home/minhaz/.dotfiles/alias.d/git.alias
source /home/minhaz/.dotfiles/alias.d/grep.alias
source /home/minhaz/.dotfiles/alias.d/jekyll.alias
source /home/minhaz/.dotfiles/alias.d/lang.alias
source /home/minhaz/.dotfiles/alias.d/ls.alias
# source /home/minhaz/.dotfiles/alias.d/make.alias
source /home/minhaz/.dotfiles/alias.d/media.alias
source /home/minhaz/.dotfiles/alias.d/misc.alias
# source /home/minhaz/.dotfiles/alias.d/mqtt.alias
source /home/minhaz/.dotfiles/alias.d/network.alias
source /home/minhaz/.dotfiles/alias.d/pb.alias
# source /home/minhaz/.dotfiles/alias.d/picocom.alias
# source /home/minhaz/.dotfiles/alias.d/pwgen.alias
source /home/minhaz/.dotfiles/alias.d/string.alias
source /home/minhaz/.dotfiles/alias.d/term.alias
