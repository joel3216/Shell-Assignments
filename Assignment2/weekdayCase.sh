#! /bin/bash

read -p "enter a number between 1 to 7  " day

case $day in
	1)	echo "monday"
		;;
	2)	echo "tuesday"
		;;
	3)	echo "wednesday"
		;;
	4)	echo "thursday"
		;;
	5)	echo "friday"
		;;
	6)	echo "saturday"
		;;
	7)	echo "sunday"
		;;
	*)	echo "number is not in specified range"
		;;
esac
