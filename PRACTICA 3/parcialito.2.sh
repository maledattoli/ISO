#!/bin/bash
array=()
for i in $(cat /etc/passwd | cut -d: -f1); do
	array+=("$i")
done
existe(){
if [ $# -ne 1 ]; then
	echo "tenias que pasar un solo parametro"
	return 3
fi
for i in ${array[@]}; do
	if [ "$i" == "$1" ]; then
		return 0
	fi
done
return 1
}
eliminar_usuario(){
if [ $# -ne 1 ]; then
	echo "tenias que pasar un solo parametro"
	return 3
fi
existe $1

if [ $? -eq 1 ]; then
	return 2
fi
i=0
for elemento in ${array[@]}; do
	if [ "$elelmento" == "$1" ]; then
		unset array[$i]
		array=("${array[@]}")
	fi
	let ((i++))
done
}
usuarios_con_patron(){
if [ $# -ne 1 ]; then
	echo "tenias que pasar un parametro"
	return 2
fi
for i in ${array[@]}; do
	if [[ "$i" == *"$1"* ]]; then
		echo "el nombre del usuario que coincide con el parametro es $i"
	fi
done
}
cantidad(){
echo "la cantidad total del elementos es de ${#array[@]}"
}
usuarios(){
echo "${array[@]}"
}
busco_en_users(){

	if [ $# -ne 1 ]; then
		echo "tenias que pasar uno"
		return 2
	fi
	array=($(grep "$1" /etc/users | cut -d -f1))
}
