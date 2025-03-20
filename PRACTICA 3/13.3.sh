#!/bin/bash
if [ $# -ne 1 ]; then
	echo "tenias que pasar un solo parametro"
	exit 1
fi
if [ -e "$1" ]; then
	if [ -d "$1" ]; then
		echo " es un directorio el objeto $1"
	elif [ -f "$1"  ]; then
		echo " es un archivo el objeto $1"
	fi
else
	echo "no existe el objeto que ingresaste"
	mkdir $1
fi


