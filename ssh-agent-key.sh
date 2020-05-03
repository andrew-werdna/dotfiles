#!/usr/bin/env bash

if [ -f "$1" ]; then
	eval $(ssh-agent -s)
	ssh-add $1
else
	echo -e "\n$1 is not a valid file\n"
	exit 1
fi

exit 0
