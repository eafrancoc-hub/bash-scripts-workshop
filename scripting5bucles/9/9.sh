#!/bin/bash

echo "Introdueix la opció que vulguis:"
echo "(1)Mostrar data i hora actual"
echo "(2)Comprovar si existeix un fitxer"
echo "(3)Sortir"

read entrada

while [ $entrada -ne 3 ]
do

	if [[ $entrada -eq 1 ]]
	then
		date
	elif [[ $entrada -eq 2 ]]
	then
		echo "Introdueix la ruta del fitxer"
		read ruta
		if [[ -f $ruta ]]
		then
			echo "El fitxer existeix"
		else
			echo "El fitxer no existeix"
		fi
	else
		echo "Introdueix una opció vàlida"
	fi
read entrada
done

