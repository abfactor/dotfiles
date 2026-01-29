#!/bin/bash
#
# killall ibus-daemon 2> /dev/null

# bash configurations
# disable Ctrl+s & Ctrl+q
if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi
shopt -s autocd       # change to named directory
shopt -s cdspell      # autocorrects cd misspellings
shopt -s checkwinsize # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist      # save multi-line commands in history as single line
shopt -s histappend

# git bare repo
# git clone --bare <git-repo-url> $HOME/.config/cfg
# alias config="/usr/bin/git --git-dir=$HOME/.config/cfg/ --work-tree=$HOME"
# config checkout
# 
# yadm clone git@github.com:abfea/dotfiles.git
# yadm checkout --force

#### alias
alias so="source"
alias info="info --vi-keys"
alias l="ls -a --group-directories-first --color=auto"
alias ls="ls --group-directories-first --color=auto"
alias ll="ls -alh --group-directories-first --color=auto"
alias la="ls -a --group-directories-first --color=auto"
# alias upgrade="sudo dnf upgrade"
alias sqlite="sqlite3"
alias vi="vim -p"
# alias vim="vim -p"
alias vim="nvim -p"
alias zeal="zeal -style Fusion"
alias bat="bat --style=plain --theme=ansi"
alias xpdf="zathura"
# tmux
alias ta="tmux attach"
alias td="tmux detach"
alias tad="tmux attach -d -t"
alias ts="tmux new-session -s"
alias tl="tmux list-sessions"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"
# alias qt-creater="/opt/qt/Tools/QtCreator/bin/qtcreator"
alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
alias objdump="objdump -M intel "
alias open="xdg-open"
alias o="xdg-open"
alias o.="xdg-open ."
if [[ $TERM == "xterm-kitty" ]] then
    alias icat="kitty +kitten icat"
fi

# bat
if [[ $(type -P bat) ]]; then
    export MANPAGER='sh -c "col -bx | bat -pl man "'
    export MANROFFOPT='-c'
fi

### Apps
# eval "$(zoxide init bash)"
# source /usr/share/fzf/shell/key-bindings.bash

source "$HOME/.config/bash/environment.sh"
source "$HOME/.config/bash/utils.sh"
