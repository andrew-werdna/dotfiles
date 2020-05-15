#!/bin/sh

gv=`go version | sed 's/go version //' | sed 's/ linux\/amd64//'`
nv=`node --version`
dv=`docker --version | sed 's/-ce.\+//'`

printf "%s; node %s; %s;" "$gv" "$nv" "$dv"

