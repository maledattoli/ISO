#!/bin/bash
if [ ! -e /home/bin ]; then
	mkdir /home/bin
fi
cant=0
for archivo in $HOME/*; do
	if [ -x "$archivo" ];then 
		mv "$archivo" /home/bin
		cant=$((cant + 1 ))
		echo "se movbiop el archivo $archivo"
	fi
done

if [ $cant -eq 0 ]; then
	echo "no se movio ninngun archivo"
else
	echo "se movieron $cant archivos"
fi
			
		
