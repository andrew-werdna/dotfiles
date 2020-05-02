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

}

makeGolangNeededDirectories
gitConfig
updateBashRc

exit 0
