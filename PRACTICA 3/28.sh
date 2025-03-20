#!/bin/sh
if [ $# -ne 1 ]; then
	echo "la cantidad de parametros es incprrecta"
	exit 1
fi
if [ ! -d $1 ]; then
	echo "no existe el directorio"
	exit 4
fi
cant_lectura=0
cant_escritura=0

for i in "$1"/*; do
	if [ -f $i ]; then
		if [ -r "$i" ]; then
			cant_lectura=$((cant_lectura + 1))
		elif [ -w "$i" ]; then
			cant_escritura=$((cant_escritura + 1 ))
		fi
	fi	
done
echo "la cantidad de archivos de lectura es $cant_lectura"
echo "la cantidad de archivos de escritura es $cant_lectura"
exit 0
