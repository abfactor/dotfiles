#!/bin/bash
export SYSTEMD_PAGER=
export EDITOR=vim
export VISUAL=vim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export PATH="$PATH:~/.local/bin"
export PATH="$PATH:~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin"

#### Configure

# using dedicated graphic card
# export DRI_PRIME=1

# Git
export GIT_CACHE_PATH="${HOME}/.cache/git_cache"

## FZF
export FZF_DEFAULT_OPTS="--border=none"

## Bash
export PS1='\[\033[01;34m\]\u@\h \W \$\[\033[00m\] '
# ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/rg/rg.conf"

# firefox
export MOZ_ENABLE_WAYLAND=1

## Android
# export JAVA_HOME="/usr/lib/jvm/java-openjdk"
export ANDROID_HOME="/opt/Android/Sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"
export REPO_OS_OVERRIDE="linux"
# export PATH="$PATH:/opt/flutter/bin"
# export PATH="$PATH:/opt/Android/Sdk/tools/bin"
# export PATH="$PATH:/opt/jdk/jdk1.8.0_241/bin"
# export PATH="$PATH:/opt/flutter/bin/cache/dart-sdk/bin/"
# export PATH="$PATH:/opt/phantomjs-2.1.1-linux-x86_64/bin"
# export PATH="$PATH:/opt/Android/Sdk/cmdline-tools/latest/bin/"

# export CCACHE_EXEC=/usr/bin/ccache
export USE_CCACHE=1
export CCACHE_CONFIGPATH=$XDG_CONFIG_HOME/ccache/ccache.conf
export CCACHE_DIR=$XDG_CACHE_HOME/.cache/ccache

# AOSP
export SOONG_GEN_COMPDB=1
export SOONG_GEN_COMPDB_DEBUG=1

## flutter
export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub"
# android sdkmanager
# alias sdkmanager="sdkmanager --sdk_root=/opt/Android/Sdk"

## rust apps
# https://github.com/rust-windowing/winit/issues/1967
# export WINIT_UNIX_BACKEND=x11
export WINIT_WAYLAND_CSD_THEME="dark"
export PATH="$PATH:$HOME/.cargo/bin"
## Alacritty
# alias alacritty="WINIT_UNIX_BACKEND=x11 alacritty"
## rustup
export RUSTUP_DIST_SERVER="https://mirrors.huaweicloud.com/rustup/"
export RUSTUP_UPDATE_ROOT="https://mirrors.huaweicloud.com/rustup/rustup/"

## fcitx5
# export FCITX_X11_USE_CLIENT_SIDE_UI=1

## Libreoffice
export SAL_ENABLESKIA=1

## gtags
export GTAGSCONF="$XDG_CONFIG_HOME/gtags.conf"
export GTAGSLIBPATH="/usr/include"

# Have less display colours
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
# explanation: https://misc.flogisoft.com/bash/tip_colors_and_formatting
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;49;92m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;35m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

## npm
export NPM_PACKAGES="$HOME/.local/lib/npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

## ruby gem
export GEM_HOME="$HOME/.local/lib/gems"
# export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
