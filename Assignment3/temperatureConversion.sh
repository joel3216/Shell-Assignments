#! /bin/bash -x

read -rep $'enter 1 to convert celcius to farenheit\n enter any other key to convert farenheit to celcius' choice

function getFarenheit(){
	local degC=$1
	f=`awk 'BEGIN {print '$degC'*(9/5)+32}'`
	echo $f
}

function getCelcius(){
	local degF=$1
	c=`awk 'BEGIN {print ('$degF'-32)*(5/9)}'`
	echo $c
}


if [[ $choice -eq 1 ]]
then
	read -p "enter the temperature (within 0C-100C)" deg
	if [[ $deg -ge 0 && $deg -le 100 ]]
	then
		farenheit=$( getFarenheit $deg )
	else
		echo "input not within specified range"
	fi
else
	read -p "enter the temperature (within 32F-212F)" deg
	if [[ $deg -ge 32 && $deg -le 212 ]]
	then
	celcius=$( getCelcius $deg )
	else
		echo "input not within specified range"
	fi
fi


