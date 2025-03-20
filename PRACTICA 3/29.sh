#!/bin/bash
array=()
for archivo in $(find $HOME -name "*.doc"); do
	array+=("$archivo")		

done
verArchivo(){
	if [ $# -ne 1 ];then
		echo "no pasaste aprametros"
		return 0
	fi
	if [ ! -f $1 ]; then
		echo " no pasaste un archivo"
		return 0
	fi
	
	encontre=0
	for archivo in "${array[@]}";do
		if [ "$archivo" == "$1" ]; then
			encontre=1
			echo "el archivo es $archivo"
		fi
	done
	if [ "$encontre" -eq 0 ];then
		echo "archivo no encontrado"
		return 5
	fi
	
		
}
cantArchivo(){
	echo "la cantidad de archivos son ${#array[@]}"
}
borrarArchivo(){
	if [ $# -ne 1 ]; then
		echo "no pasaste bien la cantidad de parametros"
		return 0
	fi
	if [ ! -f "$1" ]; then
		echo "no pasaste un archivo"
		return 0
	fi
	for i in "${array[@]}";do
		if [ "${array[i]}" == "$1" ]; then
			echo "queres borrar el elemento ${array[i]} ??"
			select opcion in "si" "no"; do
				unset array[$i]
				array=("${array[@]}")
				case $opcion in
					"si")
						break
					;;
					"no")
						rm "${array[$i]}"
						break
					;;
					*)
						echo "pusiste cualquier cosa"
						break
					;;
				esac
				
				return 0
		fi
	done
	echo "no estaba el archivo"
	return 10
}

