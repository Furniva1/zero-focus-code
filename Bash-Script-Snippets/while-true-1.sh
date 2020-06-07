#!/usr/bin/env bash

# while true do array commands, exit $status 0 = completed!

#let script exit if a command fails
set -o errexit 
#let script exit if an unsed variable is used
set -o nounset

declare -a commands
commands=([0]=`uname` [1]=`whoami` [2]=`pwd`)

while [ true ]
do
	clear
	echo
	echo "Command 1) The operating system is -> " ${commands[0]}
	sleep 4
	clear
	echo
	echo "Command 2) This is the current user -> " ${commands[1]}
	sleep 4
	clear
	echo
	echo "Command 3) This is the current path -> " ${commands[2]}
	sleep 4
	clear
	exit 0
done
