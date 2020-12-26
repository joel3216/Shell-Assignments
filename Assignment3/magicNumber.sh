#!/bin/bash
read -p "think of a number between 1 to 100 [y/n]" input
if [ $input == "y" ]
then
	lowerLimit=1
	upperLimit=100
	while [[ $lowerLimit -lt $upperLimit ]]
	do
		search=$((($upperLimit+$lowerLimit)/2))
		read -p "is the number less than "$search" [yes /no /equal ]" input
		if [ $input == "equal" ]
		then
			echo "the number you thought of was "$search
			break
		elif [ $input == "yes" ]
		then
			upperLimit=$search
		elif [ $input == "no" ]
		then
			lowerLimit=$search
		fi
	done
elif [ $input == "n" ]
then
	echo "program terminated"
fi
