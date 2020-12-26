#! /bin/bash -x

num=$1

j=0
for (( i=2;i< $num; i++ ))
do
	isWhole=$(( num%i ))
	if [ $isWhole -eq 0 ]
	then
		factors[$j]=$i
		num=$(($num/i))
		i=$(($i-1))
		j=$(($j+1))

	fi
done
j=$(($j+1))
factors[$j]=$num


echo ${factors[@]}

