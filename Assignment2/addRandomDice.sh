#! /bin/bash -x

dice1=$(( RANDOM%6 + 1 ))
dice2=$(( RANDOM%6 + 1 ))
sumDice=$(( $dice1 + $dice2 ))

echo $sumDice


