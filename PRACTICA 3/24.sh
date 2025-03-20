#!/bin/bash
suma=0
vector1=(1 2 3 4 5)
vector2=(1 2 3 4 5)
for i in "${!vector1[@]}"; do
    suma=$(( vector1[i] + vector2[i] ))
    echo "la suma de los elemnetos en la posicion $((i+1)) es $suma"
done
exit 0

