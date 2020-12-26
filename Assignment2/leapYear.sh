#! /bin/bash -x

year=$1

if [[ $year -lt 999 || $year -gt 9999 ]]
then
	echo "Enter a 4 digit Year"
else
	if [[ $year%4 -eq 0 && $year%100 -ne 0 ]]
	then
		echo $year" is a leap year"

	else
		if [[ $year%400 -eq 0 ]]
		then
			echo $year" is a leap year"
		else
			echo $year" is not a leap year"
		fi
	fi
fi
