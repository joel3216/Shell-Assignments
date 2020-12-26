#! /bin/bash

echo "list of filenames to be changed"
ls *.log.1
echo "Today's Date : " `date +%d%m%y`

for file in `ls *.log.1`
do

	filename=`echo $file | awk -F . '{print $1}'`
	dt=`date +%d%m%y`
	mv $file `echo $filename"-"$dt".log"`
done
