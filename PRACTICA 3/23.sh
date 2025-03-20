#!/bin/bash
impares=0
num=(1 7 5 1)
for numero in "${num[@]}"; do 
	if [ $((numero % 2))   -eq 0 ]; then
		echo "el numero $numero es par"
	else
		impares=$((impares + 1))
	fi
done
echo " el resultado de la cantidad de numeros impares es $impares"
