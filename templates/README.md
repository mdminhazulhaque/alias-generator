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
{% for key in aliases %}
source /path/to/alias.d/{{ key }}.alias{% endfor %}

```

## Dotfiles Generator

Visit [Dotfiles Generator](https://mdminhazulhaque.github.io/dotfiles/) to build your own bash alias file from lots of ready-made templates.

![Dotfiles](screen.png)
