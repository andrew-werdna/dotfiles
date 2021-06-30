#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export EDITOR=$(which vim)
export GOPATH=/home/$USER/go
export PATH=$HOME/bin:$PATH
export GOPROJECTS=$GOPATH/src/github.com/andrew-werdna

