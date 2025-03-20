#!/bin/bash
if [ $# -ne 3 ]; then
	echo " tenias que pasar 3 parametros"
	exit 1
fi
case $2 in 
	"*")
		resultado=$(($1 * $3 ))
	;;
	"+")
		resultado=$(($1 + $3))
	;;
	"-")
		resultado=$(($1 - $3))
	;;
	"%")
		resultado=$(($1 % $3))
	;;
	*)
		echo "escribiste cualquier cosa tenias que poner-,+,* o %"
		exit 2
	;;
esac
echo "el resultado es $resultado"
