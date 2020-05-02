#!/usr/bin/env bash

usrLocalBinPath="/usr/local/bin"
goExecPath="$usrLocalBinPath/go"
goProjectsPath="$HOME/go"

# config git
function gitConfig() {

	ghUser="andrew-werdna"
	git config --global user.email "$ghUser@users.noreply.github.com"
	git config --global user.name `whoami`

}

# update .bashrc
function updateBashRc() {

	editorLine="export EDITOR=`which vim`";
	grep $editorLine $HOME/.bashrc
	if [ $? -ne 0 ]; then
		echo -e "\n$editorLine" >> $HOME/.bashrc
	fi

	pathLine="export PATH=\$PATH:$usrLocalBinPath";
	grep $pathLine $HOME/.bashrc
	if [ $? -ne 0 ]; then
		echo "$pathLine" >> $HOME/.bashrc
	fi

}

# golang related directories
function makeGolangNeededDirectories() {

	if [ -d $goExecPath ]; then
		mkdir -p $goExecPath
	fi

	if [ -d $goProjectsPath ]; then
		mkdir -p $goProjectsPath
	fi

}

gitConfig
updateBashRc
makeGolangNeededDirectories

exit 0
