#! /bin/bash -x

heads=1
tails=0

headTally=0
tailTally=0

while [[ headTally -lt 11 && tailTally -lt 11 ]]
do
	coinToss=$((RANDOM%2))

	if [[ $coinToss -eq $heads ]]
	then
		headTally=$(($headTally+1))
	else
		tailTally=$(($tailTally+1))
	fi
done



