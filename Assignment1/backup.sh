#! /bin/bash

month=`date +%b`
today=`date +%d`


echo "list of files modified 5 days ago :"

ls -l | awk '{if(($6=="'$month'") && ($7=='$today'-5)) print $9}'

echo "	"

for file in `ls -l | awk '{if(($6=="'$month'") && ($7=='$today'-7)) print $9}'`
do
mv $file backup
echo $file "moved to backup folder" 
done

