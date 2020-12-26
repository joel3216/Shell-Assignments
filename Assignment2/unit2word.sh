#! /bin/bash

read -p "pick a number from 1,10,100,1000  " num


if [[ $num -eq 1 ]]
then
	echo "unit : one"
elif [[ $num -eq 10 ]]
then
	echo "unit : ten"
elif [[ $num -eq 100 ]]
then
	echo "unit : hundred"
elif [[ $num -eq 1000 ]]
then
	echo "unit : thousand"
else
	echo "number not in specified list"
fi
