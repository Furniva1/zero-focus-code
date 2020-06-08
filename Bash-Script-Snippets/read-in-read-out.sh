#!/usr/bin/env bash

#let script exit if a command fails
set -e
#let script exit if an unsed variable is used
set -u

alias echo="echo -n"

function1(){
	clear
	echo
	echo "This program grabs internal text and outputs it to"
	echo "a file called filename123.txt that will be created"
	echo "in the directory the code is run.  This file will "
	echo "be read to the output screen using the cat command"
	echo "and then the program will remove the filename123.txt"
	sleep 15
	function2
}
function2(){
	clear
	echo
	touch ./filename123.txt
	echo "filename123.txt has been created in your local directory"
	sleep 2
	echo "This program grabs internal text and outputs it to" > filename123.txt
	echo "a file called filename123.txt that will be created" >> filename123.txt
	echo "in the directory the code is run.  This file will " >> filename123.txt
	echo "be read to the output screen using the cat command" >> filename123.txt
	echo "and then the program will remove the filename123.txt" >> filename123.txt
	echo
	echo "filename123.txt now has text!"
	sleep 2
	clear
	function3
}
function3(){
	echo
	cat ./filename123.txt | while read LINE
	do
		echo $LINE
	done
	echo
	echo "This is the internal text output"
	sleep 10
	clear
	function4
}
function4(){
	echo
	rm ./filename123.txt
	echo "Please wait for cleanup"
	for i in {1..11}
	do
		x="."; y="o"
		echo -ne $x$y; sleep .5
	done
	echo
	echo "filename123.txt has been removed - Goodbye!"
	sleep 3
	clear
	exit 0
}
while [ 1 ]
do
function1
exit 0
done
