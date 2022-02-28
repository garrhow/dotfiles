#!/bin/sh

# add .local/bin to path
export PATH="$PATH:~/.local/bin"

# enable colors and prompt
autoload -U colors && colors
autoload -Uz promptinit
promptinit
prompt redhat

# enable autocompletion
autoload -U compinit
zmodload zsh/complist
compinit

# history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# syntax highlighting
source $XDG_CONFIG_HOME/zsh/plugins/syntax-highlighting.zsh 2>/dev/null
