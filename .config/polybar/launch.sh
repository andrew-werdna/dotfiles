#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

logfile="/tmp/polybar1.log"
barname="example"

touch "$logfile"

# Launch bar1
echo "---" | tee -a $logfile
polybar main >> $logfile 2>&1 &

echo "Bars launched..."
