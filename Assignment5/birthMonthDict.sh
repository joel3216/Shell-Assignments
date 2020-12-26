#! /bin/bash -x

declare -A birthMonth
declare -A monthCount

for (( i=0; i<50; i++ ))
do
	birthMonth[$i]=$((RANDOM%12+1))
done

for (( month=1;month<=12; month++ ))
do
	for birthMonth in ${birthMonth[@]}
	do
		if [[ $birthMonth -eq $month ]]
		then
			monthCount[$month]=$((${monthCount[$month]}+1))
		fi
	done
done

echo ${monthCount[@]}
