#! /bin/bash

echo "count filename"
for file in `ls *.log`
do
	count=`grep systemd $file | awk 'END{print " "NR" "}'`
	echo "  "$count" "$file
done

