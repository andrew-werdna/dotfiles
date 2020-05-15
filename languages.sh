#!/bin/sh

gv=`go version`
nv=`node --version`
printf "%s node %s" "$gv" "$nv"

