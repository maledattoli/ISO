#!/bin/bash
arreglo=()
for usuario in $(cat /etc/passwd | cut -d:-f1); do 
	arreglo+=("$usuario")
done

if [ $# -eq 2 ]; then
	if [ $2 -gt 0 ] && [ $2 -lt ${#arreglo[@]} ];then
		echo "el elemento en la pos $2 es ${vector[$2]}"
	else
		echo "ERRORRRRRRRR"	
	fi
elif [ $# -eq 1 ]; then
	case $1 in 
		"-l") 
			echo "la longitud es ${#vector[@]}"
		;;
		"-i" )
			echo ${vector[@]}
		;;
		*)
			echo "pusiste un parametro no correcto"
			exit 1
		;;
		

else 
	echo "tenias que pasar o uno o 2 parametros"
	exit 1
fi
exit 0
