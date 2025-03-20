#!/bin/bash
if [ $# -eq 0 ]; then
	echo "tenias que pasar al menos un parametro"
	exit 1
fi
cantidad_inexistentes=0
array=("$@")

for ((i=1; i<${#array[@]}; i++)); do # oooo for i in "$@" do y llevo un contador
	if [ $((i % 2)) -ne 0 ]; then
		if [ -e ${array[i]} ]; then
			if [ -f ${array[i]} ]; then
				echo "el objeto $i es un archivo"
			else
				echo "el objeto $i es un directorio"
			fi
		else
		cantidad_inexistentes=$((cantidad_inexistentes + 1))
		fi
	fi
done
echo "$cantidad_inexistentes"

			
