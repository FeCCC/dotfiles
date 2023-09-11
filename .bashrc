#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'

alias tmux="TERM=screen-256color tmux"

PS1='[\u@\h \W]\$ '


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
