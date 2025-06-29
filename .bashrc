#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source ~/.config/bash/config.sh

eval "$(zoxide init bash)"

GODOT4_BIN="/home/y/Src/godot/bin/godot.linuxbsd.editor.x86_64"
