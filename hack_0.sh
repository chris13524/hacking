#!/bin/bash

randArrayElement(){ arr=("${!1}"); echo ${arr["$[RANDOM % ${#arr[@]}]"]}; }

messages=(
"creating Tor node"
"Microsoft Office.DOX.!print"
"source file ANTIVIRUS failed"
"*yes"
"(((f)F((_fff()))_)"
"0xFFFFFF"
"recovering SWAP partition"
"loading all kernel modules"
"modprobe alsa"
"the cow jumped over the moon"
"^O^X^C"
"opening TCP connection"
"three way handshake"
"sending UDP packet"
"DDoSing servers via bot net"
"installing keylogger"
"spawning deamon"
"killing all deamons"
"Sys Req #89"
"INTERRUPT 1"
"starting network services"
"starting VPN conneciton"
"stopping all IO processes"
"wating for /dev/ to populate"
"timeout 10"
"setting hostname for 127.0.0.1 to localhost"
"restarting docker VM"
"resetting UEFI boot services"
"loading initial RAM disk"
"compiling native modules"
"loading modules"
"bypassing SOCKS5 proxy"
"restarting X11"
"installing python"
"installing systemd"
"pushing to repository"
"pulling updates from GitHub"
"compiling libbob"
"starting Aura"
"copying data from /var/ to /usr/"
"wiping temporary files"
"backing up database"
"jumping to 0xFF68B"
"dd if=/dev/urandom of=/dev/sda"
"waiting for bot net"
"deploying JAR"
"building servlet"
"loading all TTYs"
"creating psudo-tty"
"compiling backdoor"
"generating public/private keypair"
"signing key"
"pushing to nameservers"
"updating zone file"
"disabling UEFI secure boot"
"locking BIOS"
"installing libgnu"
"installing libgpg"
"uninstalling systemd"
"restarting upstart"
"decreasing TTL"
"waiting for all connections"
"waiting for propogation"
"it's over 9000"
"deleting OS"
"building kernel image"
"downloading iOS"
"optimizing frame data"
"suck my chode"
"need more steves"
"fuck fuck fuck fuck fuck"
)

while true; do
printf "$(randArrayElement 'messages[@]')"
if (( $RANDOM % 15 > 0 )); then
  printf "..."
  value=$(bc <<< "scale=0; 20/($RANDOM%20 + 1)")
  time=$(bc <<< "scale=5; $value/10")
  sleep $time
  echo done
else
  p=0
  printf "\n"
  value=$(bc <<< "scale=0; $RANDOM%15")
  time=$(bc <<< "scale=5; $value/500")
  while (( p <= 101 )); do
    printf "\r["
    pvalue=$[(($(tput cols)-5)*p)/100]
    for i in `seq 0 $pvalue`; do
      printf "#"
    done
    for i in `seq $pvalue $[$(tput cols)-4]`; do
      printf " "
    done
    printf "]"
    p=$p+1
    sleep $time
  done
  printf "\r"
  for i in `seq 0 $[$(tput cols)-1]`; do
    printf " "
  done
  printf "\r"
fi
done
