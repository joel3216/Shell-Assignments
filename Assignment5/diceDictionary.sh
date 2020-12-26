#! /bin/bash -x

declare -A diceDict
for (( i=1; i<=6; i++ ))
do
	diceDict[$i]=0
done

diceTallyCheck=0
while [[ $diceTallyCheck -eq 0 ]]
do
	diceRoll=$(( RANDOM%6 + 1 ))
	diceDict[$diceRoll]=$(( ${diceDict[$diceRoll]}+1 ))

	for i in ${diceDict[@]}
	do
		if [[ $i -gt 9 ]]
		then
			diceTallyCheck=1
			break
		fi
	done
done

min=${diceDict[1]}
max=${diceDict[1]}
minPos=1
maxPos=1

for i in ${!diceDict[@]}
do

	if [[ $min -gt ${diceDict[$i]} ]]
	then
		minPos=$i
		min=${diceDict[$i]}
	fi

	if [[ $max -lt ${diceDict[$i]} ]]
	then
		maxPos=$i
		max=${diceDict[$i]}
	fi

done

echo ${diceDict[@]}
echo "number that reached maximum : "$maxPos
echo "number that reached minimum : "$minPos
