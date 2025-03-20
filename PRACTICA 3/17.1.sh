#!/bin/bash
if [ $# -ne 0 ]; then
	echo " no tenias que mandar parameytrosd en esye"
	exit 1

fi
cd /home/lena/ja
for i in *; do
	if [ -f $1 ]; then
		echo $i | tr 'a-zA-Z' 'A-Za-z' | tr -d 'eE'
	fi
done
