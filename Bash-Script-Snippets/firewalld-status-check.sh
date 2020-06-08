#!/usr/bin/env bash

#let script exit if a command fails
set -o errexit 
#let script exit if an unsed variable is used
set -o nounset

alias echo="echo -n"

firewall1(){
	clear
	echo
	echo "Let's retrieve the firewalld settings: "
	sleep 1.5
	echo "Firewalld stutus -> " `sudo firewall-cmd --state`
	if [ $? -eq 0 ]
	then
		echo "The firewall is active"
		sleep 4
		firewall2
	else
		echo "The firewall is not active"
		sleep 3
		echo "exiting..."
		sleep 2
		clear
		exit 1
	fi
}
firewall2(){
	clear
	echo
	echo "These are your firewalld settings: "
	sudo firewall-cmd --list-all
	sleep 8
	firewall3
}
firewall3(){
	clear
	echo
	echo "These are the active zones: "
	sudo firewall-cmd --get-active-zones
	sleep 8
	firewall4
}
firewall4(){
	clear
	echo
	echo "These are the default zones: "
	sudo firewall-cmd --get-default-zone
	sleep 3
	echo "exiting..."
	sleep 2
	clear
	exit 0
}
while [ 1 ]
do
firewall1
exit 0
done


