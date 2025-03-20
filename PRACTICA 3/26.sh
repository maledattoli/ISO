#!/bin/bash
if [ $# -lt 1 ];then
	echo "tenias que pasar al menos un parametro"
	exit 1
fi
noexiste=0
cont=1
for i in $@; do
	if [ $((cont % 2)) -ne 0 ]; then
		if [ -e $i ]; then
			if [ -d $i ]; then
				echo "el objeto $i es un directorio"
			elif [ -f $i ]; then
				echo "el objeto $i es un archivo"
			fi
		else
			noexiste=$((noexiste + 1))
		fi
	fi
	cont=$((cont + 1)) #tengo que usar un contador :(((((
done
echo "la cantidad de archivos inexistentes son $noexiste"
exit 0
