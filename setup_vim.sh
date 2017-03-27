#!/bin/bash

echo -e "\nInstalling VimPlug\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wait
echo -e "\nDone installing VimPlug\n"
echo -e "\nBringing in .vimrc\n"
curl -fLo ~/.vimrc https://raw.githubusercontent.com/andrew-werdna/dotfiles/master/.vimrc
wait
echo -e "\nDone bringing in .vimrc\n"
echo -e "\nNow when starting Vim just run :PlugInstall\n\n"
