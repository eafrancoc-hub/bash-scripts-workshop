#!/bin/bash

if [[ $1 ]]
then
	echo "introdueix l'opció a escollir per l'usuari seleccionat"
	echo "Comprova si té permisos d'administrador (1)"
	echo "Comprova si l'usuari existeix (2)"
	echo "Comproba si la ruta del directori personal existeix(3)"
	read opcion
	case $opcion in
		1)
			id $1
		;;
		2)
			cat /etc/passwd | grep "$1"
			if [[ $? -eq 0 ]]
			then
				echo "El usuario existe"
			else
				echo "El usuario no existe"
			fi
		;;
		3)
			if [[ -d "/home/$1" ]]
			then
				echo "El seu directori personal existeix"
			else
				echo "El seu directori no existeix"
			fi
		;;
		*)
			echo "Opció no vàlida"
		;;
	esac
else
echo "Introdueix el nom d'usuari"
fi
