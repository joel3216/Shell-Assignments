#! /bin/bash

foldername="abcd"

if [ ! -d $foldername ]
then
	echo $foldername" does not exist, creating folder..."
	mkdir $foldername
	echo "done!"
fi

