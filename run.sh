#!/usr/bin/env bash
set -e

./hacking.sh &
tmux -f tmux.conf new -n hackscreen ./hack_0.sh
