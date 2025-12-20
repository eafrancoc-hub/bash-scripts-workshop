#!/bin/bash

echo "Comprovant connectivitat amb frontal.ies-sabadell.cat"

salida=1

until [ $salida -eq 0 ]
do

ping -c 1 frontal.ies-sabadell.cat 2&>/dev/null

	if [[ $? -eq 0 ]]
	then
		echo "Hi ha connectivitat amb la web, obrint el navegador..."
		salida=0
		xdg-open 'https://frontal.ies-sabadell.cat'
	else
		echo "No hi ha connectivitat, provant en 5 segons"
		salida=1
	fi
sleep 5s

done
