#! /bin/bash

read -p "enter a number between 1 to 7  " day

if [[ $day -gt 0 && $day -lt 8 ]]
then
	if [[ $day -eq 1 ]]
	then
		echo "monday"
	elif [[ $day -eq 2 ]]
	then
		echo "tuesday"
	elif [[ $day -eq 3 ]]
	then
		echo "wednesday"
	elif [[ $day -eq 4 ]]
	then
		echo "thursday"
	elif [[ $day -eq 5 ]]
	then
		echo "friday"
	elif [[ $day -eq 6 ]]
	then
		echo "saturday"
	else
		echo "sunday"
	fi

else
	echo "number is not in specified range"
fi
