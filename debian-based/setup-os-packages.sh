#!/usr/bin/env bash

sudo apt install -y curl git build-essential neofetch feh scrot wget python-software-properties software-properties-common apt-transport-https lsb-release ca-certificates rsync vim emacs tmux zip unzip

# sudo apt install -y i3 awesome openbox obconf

# config git
ghUser="andrew-werdna"
git config --global user.email "$ghUser@users.noreply.github.com"
git config --global user.name `whoami`

# install my current fav desktop for ubuntu-based regolith [desktop](https://regolith-linux.org/docs/getting-started/install/)
sudo add-apt-repository ppa:regolith-linux/release

sudo apt update -y

sudo apt install -y regolith-desktop

