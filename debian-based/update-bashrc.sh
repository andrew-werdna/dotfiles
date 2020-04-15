#!/usr/bin/env bash

configFileName=".extrarc"
filePath="$HOME/dotfiles/debian-based/$configFileName"
newFile=".$(whoami)rc"
cp "$filePath" "$HOME/$newFile"

read -r -d '' sourceCMD <<'EOF'

path="$HOME/.$(whoami)rc"
if [ -f "$path" ]; then
	source "$path"
else
	echo -e "\n$path was NOT found...\n"
fi
EOF

searchCmd=`grep -i "$newFile" ~/.bashrc`
result=$?

if [ "$result" -ne 0 ]; then
	echo "$sourceCMD" >> ~/.bashrc
	echo -e "\nupdating .bashrc with new source\n"
else
	echo -e "\nupdating .bashrc is already done"
fi

exit 0

