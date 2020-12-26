#! /bin/bash -x

num=$1

function isPrime(){
	local num=$1
	if [ $num -eq 1 ]
	then
		prime="false"
	elif [ $num -eq 2 ]
	then
		prime="true"
	else

		for (( i=2;i< $num; i++ ))
		do
			isWhole=$(( num%i ))
			if [ $isWhole -eq 0 ]
			then
				prime="false"
				break
			else
				prime="true"
			fi
		done
	fi

echo $prime
}

function isPalindrome(){
	local num=$1
	local rev=0

	while [[ $num -gt 0 ]]
	do
		rev=$(( ($rev*10)+($num%10) ))
		num=$(( num/10 ))
	done

	if [[ $rev -eq $1 ]]
	then
		echo "true"
		revPrimeCheck=$( isPrime $rev )
	else
		echo "false"
	fi
}

primeCheck=$( isPrime $num )

if [[ $primeCheck == "true" ]]
then
	echo $num" is a prime number"
	palinCheck=$( isPalindrome $num )

	if [[ $palinCheck == "true" ]]
	then
		echo $num" is also a palindrome, therfore its reverse is also prime"

	else
		echo "but "$num" is not a palindrome"

	fi
else
		echo $num" is not a prime number"
fi
