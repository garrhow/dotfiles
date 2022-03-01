#!/bin/sh

# add .local/bin to path
export PATH="$PATH:~/.local/bin"

# aliases
alias startx="startx $XINITRC"

# enable colors and prompt
autoload -U colors && colors
PS1="%F{blue}[%B%F{cyan}%n@%m %0~%b%F{blue}]%f%(#.#.$) "

# enable autocompletion
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=$XDG_CONFIG_HOME/zsh/history

# syntax highlighting
source $XDG_CONFIG_HOME/zsh/plugins/syntax-highlighting.zsh 2>/dev/null
