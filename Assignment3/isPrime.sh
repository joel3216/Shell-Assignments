#! /bin/bash

num=$1

if [ $num -eq 1 ]
then
	isPrime="false"
elif [ $num -eq 2 ]
then
	isPrime="true"
else

	for (( i=2;i< $num; i++ ))
	do
		isWhole=$(( num%i ))
		if [ $isWhole -eq 0 ]
		then
			isPrime="false"
			break
		else
			isPrime="true"
		fi
	done
fi

echo $isPrime
