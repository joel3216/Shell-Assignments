#! /bin/bash


function reverse(){
	local num=$1
	local rev=0

	if [[ $num -gt 9 ]]
	then
		while [[ $num -gt 0 ]]
		do
			rev=$(( ($rev*10)+($num%10) ))
			num=$(($num/10))
		done
		echo $rev
	else
		echo -1
	fi
}

arrCount=0
for (( i=0; i<100; i++ ))
do
	revI=$( reverse $i )

	if [[ $revI -eq $i ]]
	then
		sameDigits[$arrCount]=$i
		arrCount=$(($arrCount+1))
	fi
done

echo ${sameDigits[@]}
