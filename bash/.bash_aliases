#!/bin/bash

# How to use
# ln -s .bash_aliases ~/.bash_aliases

function _clion() {
    alias clion=$HOME/opt/clion*/bin/clion
}

function _pycharm() {
    alias pycharm=$HOME/opt/pycharm*/bin/pycharm
}

function _rye() {
    source "$HOME/.rye/env"
}

function _set_basic_env() {
    export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
}

function _fast_cd() {
    alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."
    alias .....="cd ../../../.."
}

function _useful_alias() {
    alias sb="source ~/.bashrc"
    alias fuckcpu='watch -n 0.5 grep \"cpu MHz\" /proc/cpuinfo'
    alias dl="cd ~/Downloads"
    alias dc="cd ~/Documents"
}

function _xhost() {
    xhost + >> /dev/null 2>&1
}

function _sudo_ed() {
    # Enable aliases to be sudo’ed
    alias sudo='sudo '
}

function _ip_address() {
    # IP addresses
    alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
    alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
    alias ips="sudo ifconfig -a | grep -o 'inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-F0-9:]\\+\\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
}

function _timer() {
    # Stopwatch
    alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
}

function ind() {
    docker exec -it $1 /bin/bash
}

_clion
_pycharm
_rye
_set_basic_env
_fast_cd
_useful_alias
_xhost
_sudo_ed
_ip_address
_timer
