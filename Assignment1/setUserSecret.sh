#! /bin/bash

env | grep USERSECRET
status=$?
if [ $status -eq 0 ]
then
	echo "ERROR: Variable USERSECRET is already set !"
fi

if [ $status -ne 0 ]
then
	export USERSECRET="dH34xJaa23"
	echo "USERSECRET set successfully"
fi
