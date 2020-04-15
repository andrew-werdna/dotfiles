#!/usr/bin/env bash

sudo apt install -y curl git build-essential neofetch feh scrot wget rsync vim emacs tmux zip unzip i3 rofi ranger compton

# other extras that may be needed at some point
# sudo apt install -y python-software-properties software-properties-common apt-transport-https lsb-release ca-certificates

# config git
ghUser="andrew-werdna"
git config --global user.email "$ghUser@users.noreply.github.com"
git config --global user.name `whoami`

