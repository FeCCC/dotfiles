#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source $(dirname -- $0)/.rctools
source ~/.rctools

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color=auto'


if [ $(program_exists nvim) -eq 0 ]; then
    alias vi='nvim'
    alias vim='nvim'
fi

PS1='[\u@\h \W]\$ '

if [ -d ~/.cargo/bin ]; then
    export PATH=$PATH:~/.cargo/bin
fi

export LANG="zh_CN.UTF-8"
export LANGUAGE="zh_CN:zh:en_US:en"
# 其他
export LC_MONETARY="zh_CN.UTF-8"
export LC_PAPER="zh_CN.UTF-8"
export LC_NAME="zh_CN.UTF-8"
export LC_ADDRESS="zh_CN.UTF-8"
export LC_TELEPHONE="zh_CN.UTF-8"
export LC_MEASUREMENT="zh_CN.UTF-8"
export LC_IDENTIFICATION="zh_CN.UTF-8"

export GPG_TTY=$(tty)

export LESSCHARSET=utf-8

export PATH=$PATH:~/.cargo/bin
