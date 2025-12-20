#!/bin/bash

echo "Usuaris que contenen una majúscula al seu nom:"

awk -F: '$1 ~ /[A-Z]/ { print $1 }' /etc/passwd  #-F: para delimitar por los dos puntos, $1 ~ /[A-Z]/ comprueba que contenga alguna mayúscula.

error=true

while [ "$error" = true ]
do

	echo "Introdueix un usuari:"
	read usuario

	if [[ $(grep -c "^$usuario" /etc/passwd) -gt 0 ]] #^Para buscar al inicio de la línea. grep -c para mostrar el número de líneas que coinciden.
	then
		echo "l'usuari existeix"
		error=false
		cat /etc/passwd | grep $usuario
	else
		echo "l'usuario no existeix"
	fi

done
