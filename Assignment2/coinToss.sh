#! /bin/bash

heads=1
tails=0

coinToss=$((RANDOM%2))

if [[ $coinToss -eq $heads ]]
then
	echo "Head"
else
	echo "Tail"
fi

