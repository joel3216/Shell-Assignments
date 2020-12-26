#! /bin/bash

for (( i=0;i<10;i++ ))
do
	arr[$i]=$(( RANDOM%900+100 ))
done

min=${arr[0]}
max=${arr[0]}

for j in ${arr[@]}
do
	if [[ $min -gt $j ]]
	then
		min2=$min
		min=$j
	fi
done

for j in ${arr[@]}
do
	if [[ $max -lt $j ]]
	then
		max2=$max
		max=$j
	fi
done

echo ${arr[@]}
echo "the second smallest element is "$min2
echo "the second greatest element is "$max2

