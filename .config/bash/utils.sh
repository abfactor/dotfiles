#!/bin/bash

#### Functions

function av() {
    echo "$1" >> ~/vocabulary
}

# proxy
function set_proxy() {
    export all_proxy=http://127.0.0.1:7890
}
function unset_proxy() {
    unset all_proxy
}

# colorful cat
# pip install pygments
# https://zhuanlan.zhihu.com/p/49552439
function ccat() {
    local style="monokai"
    if [ $# -eq 0 ]; then
        pygmentize -P style=$style -P tabsize=4 -f terminal256 -g
    else
        for NAME in "$@"; do
            pygmentize -P style=$style -P tabsize=4 -f terminal256 -g "$NAME"
        done
    fi
}

function mc() {
    mkdir "$@"
    cd "$@" || exit
}

function try_until_success() {
    local i=1
    while true
    do echo "Try $i $* at $(date): "
        "$*" && break
        (( i+=1 ))
        sleep 3
    done
}

function color_scheme_switch() {
    local interface='org.gnome.desktop.interface color-scheme'
    local color_scheme
    color_scheme=$(gsettings get "$interface")
    if [[ $color_scheme == "'prefer-dark'" ]]; then
        gsettings set "$interface" 'prefer-light'
    else
        gsettings set "$interface" 'prefer-dark'
    fi
}

function fman() {
    man -k . \
        | fzf -q "$1" --prompt='man> ' \
        | tr -d '()' \
        | awk '{printf "%s ", $2} {print $1}' \
        | xargs -r man
}
