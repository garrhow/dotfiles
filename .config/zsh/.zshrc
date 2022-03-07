#!/bin/sh

# add .local/bin to path
export PATH="$PATH:~/.local/bin"

# aliases
alias startx="startx $XINITRC"

# basic shell tweaks
setopt autocd
stty stop undef
setopt interactivecomments

# enable colors and set prompt
autoload -U colors && colors
PS1="%F{blue}[%B%F{cyan}%n@%m %0~%b%F{blue}]%f%(#.#.$) "

# enable tab completion
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=$XDG_CONFIG_HOME/zsh/history

# key bindings
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# autosuggestions and syntax highlighting
source $XDG_CONFIG_HOME/zsh/plugins/autosuggestions.zsh 2>/dev/null
source $XDG_CONFIG_HOME/zsh/plugins/syntax-highlighting.zsh 2>/dev/null
