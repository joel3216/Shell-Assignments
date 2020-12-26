#! /bin/bash

read -p "enter the first number" num1
read -p "enter the second number" num2

function reverse(){
	local num=$1
	local rev=0

	while [[ $num -gt 0 ]]
	do
		rev=$(( ($rev*10)+($num%10) ))
		num=$(($num/10))
	done
	echo $rev
}

revNum1=$( reverse $num1 )
revNum2=$( reverse $num2 )

if [[ $revNum1 -eq $num1 ]]
then
	echo $num1" is a palindrome"
else
	echo $num1" is not a palindrome"
fi

if [[ $revNum2 -eq $num2 ]]
then
	echo $num2" is a palindrome"
else
	echo $num2" is not a palindrome"
fi

