#! /bin/bash

echo "list of files to move"
ls *.txt


for filename in `ls *.txt`
do
	foldername=`echo $filename | awk -F . '{print $1}'`
	mkdir $foldername
	mv $filename $foldername
	echo $filename "moved to " $foldername
done
