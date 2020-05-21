#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=/usr/bin/vim
export GOPATH=/home/altair/go
export TERMINAL=urxvt
export PATH=$HOME/bin:$PATH
export GOPROJECTS=$GOPATH/src/github.com/andrew-werdna

