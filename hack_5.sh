#!/bin/bash

while true; do
  dd if=/dev/urandom of=/tmp/hack_5.sh.out bs=1 count=$[ $RANDOM % 10 + 100] >& /dev/null
  cat /tmp/hack_5.sh.out
  rm /tmp/hack_5.sh.out
  sleep $[ $RANDOM % 100 / 100 ]
done
