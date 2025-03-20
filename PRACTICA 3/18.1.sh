#!/bin/bash
if [ $# -ne 1 ]; then
	echo "tenias que pasar un parametro"
	exit 1
fi
user_V=$(cat /etc/passwd | cut -d: -f1 | grep -w "$1" | wc -l)
if [ $user_V -eq 0 ]; then
	echo "mmmm me parece que no existe ese user"
	exit 1
fi

while true; do
	entro=$(who | cut -d' ' -f1  | grep "$1" | wc -l)
	if [ $entro -gt 0 ]; then
		echo " se encontro el user $1"
		exit 0
	fi
	sleep 10
done



