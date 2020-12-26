#! /bin/bash

limit=$1

for (( counter=1; counter <= $limit; counter++))
do
	harmonicNo=`awk 'BEGIN {print '$harmonicNo'+1/'$counter'}'`
done
echo "the "$limit"th harmonic no is : "$harmonicNo
