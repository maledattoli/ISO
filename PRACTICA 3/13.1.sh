#!/bin/bash
for  ((i=0; i<100; i++)); do
	cuadrado=$((i * i))
	echo "el numero es $i su cuadrado es $cuadrado"
done
