#!/bin/bash
if [ $# -ne 0 ]; then
	echo "flaseaste "
	exit 1
fi
while true; do
	mostrar
	select ejercicio in "12.1.sh" "13.1.sh" "14.1.sh" "16.1.sh" "17.1.sh" "18.1.sh" "Salir"; do
		case ejercicio in 
			"12.1.sh")
				
			;;
			"13.1.sh")
			
			;;
			"14.1.sh")
			;;
			"16.1.sh")
			
			;;
			"17.1.sh")
			
			;;
			"18.1.sh")
			
			;;
			"Salir")
				echo "chauuuuuuuuuuuuu"
				exit 1
			;;
			*)
				echo "flasheaste"
				
			;;
		esac
	done
done		
			
			
	
