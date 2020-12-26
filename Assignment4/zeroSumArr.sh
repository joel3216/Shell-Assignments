#! /bin/bash

read -p "enter the number of elemrnts " limit

for (( i=0; i< $limit; i++ ))
do
	read -p "enter element no."$(($i+1))" : " arr[$i]
done

sumCount=0
for (( i=0; i< $limit; i++ ))
do
	for (( j=$(( ($i+1)%$limit )); j< $limit; j++ ))
	do
		for (( k=$(( ($j+1)%$limit )); k< $limit; k++ ))
		do
			sum=$((${arr[$i]}+${arr[$j]}+${arr[$k]}))
			if [[ $sum -eq 0 ]]
			then
				zeroSum[$sumCount]="("${arr[$i]}","${arr[$j]}","${arr[$k]}")"
				sumCount=$(($sumCount+1))
			fi
		done
	done
done

echo ${zeroSum[@]}
