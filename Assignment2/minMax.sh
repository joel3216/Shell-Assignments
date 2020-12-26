#! /bin/bash -x

num1=$((RANDOM%900+100))
num2=$((RANDOM%900+100))
num3=$((RANDOM%900+100))
num4=$((RANDOM%900+100))
num5=$((RANDOM%900+100))

if [[ $num1 -le $num2 && $num1 -le $num3 && $num1 -le $num4 && $num1 -le $num5 ]]
then
	echo $num1" is the smallest"
fi

if [[ $num2 -le $num1 && $num2 -le $num3 && $num2 -le $num4 && $num2 -le $num5 ]]
then
	echo $num2" is the smallest"
fi

if [[ $num3 -le $num1 && $num3 -le $num2 && $num3 -le $num4 && $num3 -le $num5 ]]
then
	echo $num3" is the smallest"
fi

if [[ $num4 -le $num1 && $num4 -le $num2 && $num4 -le $num3 && $num4 -le $num5 ]]
then
	echo $num4" is the smallest"
else
	echo $num5" is the smallest"
fi



if [[ $num1 -ge $num2 && $num1 -ge $num3 && $num1 -ge $num4 && $num1 -ge $num5 ]]
then
	echo $num1" is the greatest"
fi

if [[ $num2 -ge $num1 && $num2 -ge $num3 && $num2 -ge $num4 && $num2 -ge $num5 ]]
then
	echo $num2" is the greatest"
fi

if [[ $num3 -ge $num1 && $num3 -ge $num2 && $num3 -ge $num4 && $num3 -ge $num5 ]]
then
	echo $num3" is the greatest"
fi

if [[ $num4 -ge $num1 && $num4 -ge $num2 && $num4 -ge $num3 && $num4 -ge $num5 ]]
then
	echo $num4" is the greatest"
else
	echo $num5" is the greatest"
fi


