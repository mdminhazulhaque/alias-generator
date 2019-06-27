# DotFiles

This repository contains bash aliases, prompts and other configs I use.

## Install

Symlink `bashrc` to `.bashrc` and rest of the configs will be done automatically.

```sh
ln -s ./bashrc ~/.bashrc
```

If you want to make the aliases and other configs available to root, do the following.

```sh
ln -s /path/to/dotfiles/bashrc /root/.bashrc
```

But be aware about security issues.

## Modular Approach

You might not need all aliases at once, right? I have split up all the aliases into modules. Now you can load them based on your choice.

```
source /path/to/alias.d/pb.alias
source /path/to/alias.d/ls.alias
source /path/to/alias.d/string.alias
source /path/to/alias.d/mqtt.alias
source /path/to/alias.d/brew.alias
source /path/to/alias.d/grep.alias
source /path/to/alias.d/color.alias
source /path/to/alias.d/cd.alias
source /path/to/alias.d/pwgen.alias
source /path/to/alias.d/network.alias
source /path/to/alias.d/misc.alias
source /path/to/alias.d/picocom.alias
source /path/to/alias.d/adb.alias
source /path/to/alias.d/jekyll.alias
source /path/to/alias.d/core.alias
source /path/to/alias.d/git.alias
source /path/to/alias.d/media.alias
source /path/to/alias.d/lang.alias
source /path/to/alias.d/disk.alias
source /path/to/alias.d/kubectl.alias
source /path/to/alias.d/find.alias
source /path/to/alias.d/make.alias
source /path/to/alias.d/cups.alias
source /path/to/alias.d/term.alias
source /path/to/alias.d/apt.alias
```

## Bash Alias Builder

Check out my another project [Bash Alias Builder](https://mdminhazulhaque.github.io/dotfiles/) to build your own bash alias file from lots of ready-made templates.

![Bash Alias Builder](screen.png)
