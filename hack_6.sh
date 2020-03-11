#!/bin/bash

speed=`python3 -c "print($RANDOM % 10.0 / 50.0)"`

while true; do
    md5sum <<< `date +%N` | head -c -1
    printf "  "
    dd if=/dev/urandom bs=1 count=25 status=none | base64
    sleep $speed
done
