#!/usr/bin/env bash
set -e

while true; do
  dd if=/dev/urandom bs=1 count=$[ $RANDOM % 10 + 100] status=none
  sleep $( python3 -c "print($RANDOM % 3 / 10.0)" )
done
