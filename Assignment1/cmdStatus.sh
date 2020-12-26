#! /bin/bash

for c in hello ls
do

	$c
	status=$?
	echo " "
	if [ $status -eq 0 ]
	then
		echo $c" command executed successfully"
	fi

	if [ $status -ne 0 ]
	then
		echo $c" command failed"
	fi
done

