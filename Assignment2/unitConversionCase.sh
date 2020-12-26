#! /bin/bash -x

read -rep $'Select option \n1.Feet to Inch \n2.Feet to Meter \n3.Inch to Feet \n4.Meter to Feet \nEnter Option No.' option
read -p "enter the measurment" length

case $option in
	1)	inch=$(($length*12))
		;;
	2)	meter=$(($length*381/1250))
		awk 'BEGIN {print '$length*381/1250'}'
		;;
	3)	feet=$(($length/12))
		;;
	4)	feet=$((($length*1250)/381))
		awk 'BEGIN {print '$length*1250/381'}'
		;;
	*)	echo "invalid option"
		;;
esac

