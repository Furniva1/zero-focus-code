#!/usr/bin/env bash

#let script exit if a command fails
set -e
#let script exit if an unsed variable is used
set -u

alias echo="echo -n"

func1(){
	clear
	echo
	version=`docker --version`
	echo "The docker version is $version"
	sleep 5
}
func2(){
	clear
	echo
	images=`docker images`
	echo "The downloaded docker images are $images"
	sleep 5
}
func3(){
	clear
	echo
	containers=`docker ps`
	echo "The running containers are $containers"
	sleep 5
}
func4(){
	clear
	echo
	echo "Enter the container name for a historical search"
	read thisone
	history=`docker history $thisone`
	echo "The running containers are $history"
	sleep 5
}
while [ 1 ]
do
	clear
	echo
	echo "Enter a number, between 1 to 4. Type "q" to exit"
	echo "1) Check the docker version"
	echo "2) List all the downloaded docker images"
	echo "3) List all the running containers"
	echo "4) Get docker history for X container"
	echo

	read mynum
	case $mynum in
		1)	# Docker Version
			func1
			;;
		2)	# Docker Images
			func2
			;;
		3)	# Docker Running Containers
			func3
			;;
		4)	# Docker History
			func4
			;;
		"q") echo "You want to (q)uit"
			exit 0
			;;
		*) echo "Oops its not allowd"
		;;
	esac
done	
exit 0
