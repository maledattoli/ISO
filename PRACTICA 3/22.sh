#!/bin/bash
num=(10 3 5 7 9 3 5 4 )
resu=1
productoria(){
	
	for numero in ${num[@]}; do 
		resu=$(( $resu * $numero ))
	done
	echo " el resultado es $resu"
	return 0
}
productoria
