#!/bin/bash
if [ $# -ne 3 ]; then
	echo " tenias que pasar 3 parametros"
	exit 1
fi
if [ ! -d $1 ]; then
	echo "tenias que pasar un directorio"
	exit 1
fi
	
if [ "$2" != "-a" ] && [  "$2" != "-b" ]; then
	echo "no pussiste ni -a ni -b "
	exit 1
fi


cd $1
for i in $(ls); do
	if [ ! -f "$i" ]; then
		continue
	else	
		if [ $2 == "-a" ]; then
			mv $i $3$i
		else
			mv $i $i$3
		fi
	fi
done
