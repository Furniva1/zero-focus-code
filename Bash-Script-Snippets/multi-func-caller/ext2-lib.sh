#!/usr/bin/env bash

# ext2-lib.sh works with main-func-caller.sh

#let script exit if a command fails
set -e
#let script exit if an unsed variable is used
set -u

uname_admin1(){
	clear
	echo
	echo "1) You have selected uname for current OS system information"
	echo
	uname -a
	wait

}
lscpu_admin2(){
	clear
	echo
	echo "2) lscpu  gathers  CPU  architecture  information"
	echo
	echo "Choose either a) lscpu or b) /proc/cpuinfo"
	read Choice
	echo
	if [[ "$Choice" = "a" ]]
	then
		lscpu -e
		wait
	elif [[ "$Choice" = "b" ]]
	then
		FILENAME="/proc/cpuinfo"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	else
		echo
		echo "You made a wrong choice!"
		wait
	fi

}
lspci_admin3(){
	clear
	echo
	echo "3) Hardware devices that are connected to your PCI and PCIe bus displayed"
	echo
	lspci -m
	wait

}
lsscsi_admin4(){
	clear
	echo
	echo "4) Show lsscsi attached scsi device information"
	echo
	echo "Choose either a) lsscsi or b) /proc/scsi/scsi"
	read Choice
	echo
	if [[ "$Choice" = "a" ]]
	then
		lsscsi -s
		wait
	elif [[ "$Choice" = "b" ]]
	then
		FILENAME="/proc/scsi/scsi"
		while IFS= read -r line
		do
  			echo "$line"
		done < $FILENAME
		wait
	else
		echo
		echo "You made a wrong choice!"
		wait
	fi

}
lsmem_admin5(){
	clear
	echo
	echo "7) lsmem list the ranges of available memory with their online status"
	echo
	lsmem -a
	wait

}
lsblk_admin6(){
	clear
	echo
	echo "8) Block devices are special files that refer to or represent a device"
	echo "which could be anything from a hard drive to a USB drive"
	echo
	lsblk -a
	wait

}
lshw_admin7(){
	clear
	echo
	echo "9) lshw command lets you fetch hardware info"
	echo
	lshw -businfo
	wait

}
lslogins_admin8(){ 
	clear
	echo "10) The default action is to list info about all the users in the system"
	echo
	echo "Choose either a) id <current user> or b) lslogins"
	read Choice
	echo
	if [[ "$Choice" = "a" ]]
	then
		id
		wait
	elif [[ "$Choice" = "b" ]]
	then
		lslogins -u
		wait
	else
		echo
		echo "You made a wrong choice!"
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
	uname_admin1
	lscpu_admin2
	lspci_admin3
	lsscsi_admin4
	lsmem_admin5
	lsblk_admin6
	lshw_admin7
	lslogins_admin8
	
exit 0
done
