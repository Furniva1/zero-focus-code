#!/usr/bin/env bash

# Experimental - calls external functions into the program
# to run the program type the following:  ./main-func-caller.sh 
# the external libraries must be in the same directory as main-func-caller.sh
# remember to chmod +x for executable
# -- needs further development --

#let script exit if a command fails
set -o errexit 
#let script exit if an unsed variable is used
set -o nounset

alias echo="echo -n"

clear
while :
do
echo
echo "External library functions are imported to execute the available commands below:"
echo
echo "1) ext1-lib.sh:  getent, passwd, group, networks, hosts, protocol, service"
echo "2) ext2-lib.sh:  uname, id, lscpu, lspci, lsscsi, lsmem, lsblk, lshw, lslogins"
echo "3) ext3-lib.sh:  "
echo "4) ext4-lib.sh:  import next function library"
echo "5) ext5-lib.sh:  import next function library"
echo "6) ext6-lib.sh:  import next function library"
echo "7) ext7-lib.sh:  import next function library"
echo
echo "Type a number 1-7 or (q) to quit:"

	read mynum
	case $mynum in

		1)	clear
			. ext1-lib.sh
			;;

		2)	clear
			. ext2-lib.sh
			;;
		3)	clear
			;;
		4)	clear
			;;
		5)	clear
			;;
		6)	clear
			;;
		7)	clear
			;;
		"q") echo "You want to quit"
			exit 0
			;;
		*) echo "Oops its not allowd"
			;;
	esac
done	
exit 0
