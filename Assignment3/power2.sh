#! /bin/bash

powerLimit=$1

for (( power=1; power <= $powerLimit; power++ ))
do
	powerOf2=$(( 2**$power ))
	echo "2 ^ "$power" : "$powerOf2
done


