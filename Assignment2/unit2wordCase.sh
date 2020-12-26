#! /bin/bash

read -p "pick a number from 1,10,100,1000  " num


case $num in
	1)	echo "unit : one"
		;;
	10)	echo "unit : ten"
		;;
	100)	echo "unit : hundred"
		;;
	1000)	echo "unit : thousand"
		;;
	*)	echo "number not in specified list"
		;;
esac

