#!/usr/bin/env bash

# I use this on a fresh OS install to basically do a couple of things:
# 	1.) create base directories realted to development with golang, and .ssh
# 	2.) configure the global git details needed to start committing quickly
# 	3.) update my bashrc with editor, update the path, and create GOPATH env variable
usrLocalBinPath="/usr/local/bin"
goExecPath="$usrLocalBinPath/go"
goProjectsPath="$HOME/go"
ghUser="andrew-werdna"

# config git
function gitConfig() {

	git config --global user.email "$ghUser@users.noreply.github.com"
	git config --global user.name `whoami`

}

# update .bashrc
function updateBashRc() {

	editorLine="EDITOR=`which vim`";
	throwAway=`grep $editorLine $HOME/.bashrc`
	if [ $? -ne 0 ]; then
		echo -e "\nexport $editorLine" >> $HOME/.bashrc
	fi

	pathLine="PATH=\$PATH:$usrLocalBinPath";
	throwAway=`grep $pathLine $HOME/.bashrc || echo $PATH | grep $usrLocalBinPath`
	if [ $? -ne 0 ]; then
		echo "export $pathLine" >> $HOME/.bashrc
	fi

	goPathLine="GOPATH=$goProjectsPath"
	goCheck=`env | grep GOPATH && grep $goPathLine $HOME/.bashrc`
	if [ $? -ne 0 ]; then
		echo "export $goPathLine" >> $HOME/.bashrc
	fi

}

# golang related directories
function makeGolangNeededDirectories() {

	sudoPath=`which sudo`
	if [ $? -eq 0 ]; then
		sudo mkdir -p $goExecPath
	fi
	mkdir -p $goProjectsPath/{src,pkg,bin}
	mkdir -p $goProjectsPath/src/github.com/$ghUser

}

makeGolangNeededDirectories
gitConfig
updateBashRc

mkdir -p $HOME/.ssh
mkdir -p $HOME/.config/{awesome,i3}

exit 0
