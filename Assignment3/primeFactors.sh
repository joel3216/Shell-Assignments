#! /bin/bash -x

num=$1
factors=""

for (( i=2;i< $num; i++ ))
do
	isWhole=$(( num%i ))
	if [ $isWhole -eq 0 ]
	then
		factors=$factors" "$i
		num=$(($num/i))
		i=$(($i-1))
	fi
done
factors=$factors" "$num


echo $factors

