#!/usr/bin/env bash

configFileName=".extrarc"
filePath="$HOME/easy-new-machine-setup/debian-based/$configFileName"

read -r -d '' sourceCMD <<'EOF'

path="$HOME/easy-new-machine-setup/debian-based/.extrarc"
if [ -f "$path" ]; then
	echo -e "\n$path found, sourcing it now..."
	source "$path"
else
	echo -e "\n$path was NOT found...\n"
fi
EOF

searchCmd=`grep -i "$configFileName" ~/.bashrc`
result=$?

if [ "$result" -ne 0 ]; then
	echo "$sourceCMD" >> ~/.bashrc
	echo -e "\nscript with check has been added\n"
else
	echo -e "\nadding bash script to .bashrc is already done"
fi

exit 0

