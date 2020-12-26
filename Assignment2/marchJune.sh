#! /bin/bash -x

dayUpperLimit=20
dayLowerLimit=20
monthUpperLimit=3
monthLowerLimit=6

month=$1
day=$2

res=""

if [[ $month -gt $monthUpperLimit && $month -lt $monthLowerLimit ]]
then
	res="true"
else
	res="false"
fi

if [[ $month -eq $monthUpperLimit ]]
then
	if [[ $day -ge $dayUpperLimit ]]
	then
		res="true"
	else
		res="false"

	fi

fi

if [[ $month -eq $monthLowerLimit ]]
then
	if [[ $day -le $dayLowerLimit ]]
	then
		res="true"
	else
		res="false"
	fi
fi

echo $res
