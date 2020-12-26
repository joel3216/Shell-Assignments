#! /bin/bash

for (( i=0;i<10;i++ ))
do
	arr[$i]=$(( RANDOM%900+100 ))
done

min=${arr[0]}
max=${arr[0]}

for (( i=0; i<10; i++ ))
do
	for (( j=0; j<10; j++ ))
	do
		if [[ ${arr[$i]} -lt ${arr[$j]} ]]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done

echo ${arr[@]}
echo "the second smallest element is "${arr[1]}
echo "the second largest element is "${arr[8]}

