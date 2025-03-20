#!/bin/bash
if [ $# -ne 1 ]; then
	echo "em tenias que poner uno"
	exit 1
fi
for $i in $(cat /etc/passwd | cut -d: -f1,6); do
	user=$(echo $i | cut -d: -f1)
	home
	
