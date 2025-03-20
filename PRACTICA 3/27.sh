#!/bin/bash
inicializar(){
	array=()
	echo "se creo un array"
}
agregar_elem(){
	if [ $# -ne 1 ]; then
		echo "no pasaate los parametros necesitados, tenias que pasar 1"
		return 1
	fi
	array+=$1
	echo "agregue el elemento"
}
eliminar_elem(){
	if [ $# -ne 1 ]; then
		echo "pasaste pmal la contidad de parametros, tenias que pasar 1"
		return 2
	fi
	if [ $1 -ge ${#array[*]} ]; then
		echo "esa posicion no existe"
		return 3
	fi
	unset array[$1]
	array=(${array[*]})
	echo "elemento aeliminado"
}
longitud(){
	echo ${array[@]}
}
imprimir(){
	echo ${array[@]}
}
inicializar_con_valores(){
	if [ $# -ne 2 ]; then
		echo "pasaste ,mal la cantidad de parametros, tenias qu epasar 2"
		return 4
	fi
	iniciar
	while [ $i -lt $1 ];do
		agregar_elemento $2
		((i++))
	done
	echo "listooo"
}





