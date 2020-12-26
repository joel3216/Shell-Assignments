#! /bin/bash

powerLimit=256
power=1
while [[ $power -le $powerLimit ]]
do
	powerOf2=$(( 2**$power ))
	echo "2 ^ "$power" : "$powerOf2
	power=$(($power+1))
done


