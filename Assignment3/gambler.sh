#! /bin/bash -x

heads=1
tails=0
money=100
bet=1

while [[ $money -gt 0 && $money -lt 200 ]]
do
	coinToss=$((RANDOM%2))

	if [[ $coinToss -eq $heads ]]
	then
		money=$(($money+$bet))
	else
		money=$(($money-$bet))
	fi
done


