#!/usr/bin/env bash

# ext1-lib.sh works with main-func-caller.sh

#let script exit if a command fails
set -e
#let script exit if an unsed variable is used
set -u

getent_admin1(){
	clear
	echo
	echo "Enter the User you are looking for in the passwd file or hit <ENTER>"
	echo
	read User
	echo
	if [[ "$User" != "" ]]
	then
		getent passwd | grep "$User"
		wait
	else
		FILENAME="/etc/passwd"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}
getent_admin2(){
	clear
	echo
	echo "Enter the Group you are looking for in /etc/group or hit <ENTER>"
	echo
	read Group
	echo
	if [[ "$Group" != "" ]]
	then
		getent group | grep "$Group"
		wait
	else
		FILENAME="/etc/group"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}
getent_admin3(){
	clear
	echo
	echo "Enter the Network you are looking for in /etc/networks or hit <ENTER>"
	echo
	read Network
	echo
	if [[ "$Network" != "" ]]
	then
		getent networks | grep "$Network"
		wait
	else
		FILENAME="/etc/networks"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}
getent_admin4(){
	clear
	echo
	echo "Enter the Hosts you are looking for in /etc/hosts or hit <ENTER>"
	echo
	read Host
	echo
	if [[ "$Host" != "" ]]
	then
		getent hosts | grep "$Host"
		wait
	else
		FILENAME="/etc/hosts"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}
getent_admin5(){
	clear
	echo
	echo "Enter the Protocols you are looking for in /etc/protocols or hit <ENTER>"
	echo
	read Protocol
	echo
	if [[ "$Protocol" != "" ]]
	then
		getent protocols | grep "$Protocol"
		wait
	else
		FILENAME="/etc/protocols"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}
getent_admin6(){
	clear
	echo
	echo "Enter the Services you are looking for in /etc/services or hit <ENTER>"
	echo
	read Service
	echo
	if [[ "$Service" != "" ]]
	then
		getent services | grep "$Service"
		wait
	else
		FILENAME="/etc/services"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	fi
}

wait(){
	echo
	echo "Hit <ENTER> again to continue"
	read x
	if [ "$x" ]
	then
	clear
	fi
}
while :
do
	getent_admin1
	getent_admin2
	getent_admin3
	getent_admin4
	getent_admin5
	getent_admin6

exit 0
done
