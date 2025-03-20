#!/bin/bash
if [ $# -ne 0 ]; then
	echo "no tenias qu erpasar parametros"
	exit 1
fi
select queHago in "Listar"  "DondeEstoy" "QuienEsta"
do
	case $queHago in 
		"Listar")
			ls -l
		;;
		"DondeEstoy")
			pwd
		;;
		"QuienEsta")
			who #users conectados al sistema whoami quien es el usuario actual
		;;
		*)
			echo " pusiste cualquiera"
			exit 1
		;;
	esac
done

