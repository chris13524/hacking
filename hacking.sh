#!/usr/bin/env bash
set -e

sleep 1

function randomPane {
    paneCount=`tmux list-panes -t hackscreen | wc -l`
    if [[ "$paneCount" -eq "0" ]]; then
        exit
    fi
    panes=($(tmux list-panes -t hackscreen -F "#{pane_id}"))
    rand=$[ $RANDOM % $paneCount ]
    eval "$1='${panes[$rand]}'"
}

function spawn {
    pane=''
    randomPane pane
    tmux split-window -t $pane ./hack_$[$RANDOM % ($(ls | wc -l)-3)].sh
    tmux select-layout -t hackscreen tiled
}

function kill {
    pane=''
    randomPane pane
    tmux kill-pane -t $pane
    tmux select-layout -t hackscreen tiled
}

cycleCount=0
sleepValue=1

while true; do
cycleCount=$[$cycleCount + 1]
if (( $cycleCount > $[10 / $sleepValue] )); then
  sleepValue=$[$RANDOM%5 + 2]
  cycleCount=0;
fi
sleep $sleepValue

if (( $(tmux list-panes -t hackscreen | wc -l) > 5 )); then
kill
elif (( $(tmux list-panes -t hackscreen | wc -l) < 2 )); then
spawn
elif (( $[$RANDOM%2] == 1 )); then
    spawn
else
    kill
fi
done
