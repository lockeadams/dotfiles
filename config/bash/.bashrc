#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[1;31m\][\u \W]\$ \[\033[00m\]'

alias i3c='nvim ~/.config/i3/config'
alias nc='nvim ~/.config/nvim/init.vim'

export PATH=$PATH:/home/locke/bin
