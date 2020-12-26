#! /bin/bash -x

read -p "Enter the first number " n1
read -p "Enter the second number " n2
read -p "Enter the third number " n3

op1=$(( n1+n2*n3 ))
op2=$(( n1%n2+n3 ))
op3=$(( n1/n2+n3 ))
op4=$(( n1*n2+n3 ))

if [[ $n1 -gt $n2 && $n1 -gt $n3 ]]
then
	echo $n1" is greatest"
elif [[ $n2 -gt $n1 && $n2 -gt $n3 ]]
then
	echo $n2" is greatest"
else
	echo $n3" is greatest"
fi


if [[ $n1 -lt $n2 && $n1 -lt $n3 ]]
then
	echo $n1" is smallest"
elif [[ $n2 -lt $n1 && $n2 -lt $n3 ]]
then
	echo $n2" is smallest"
else
	echo $n3" is smallest"
fi
