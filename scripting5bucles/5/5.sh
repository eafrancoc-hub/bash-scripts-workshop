#!/bin/bash


echo "Introdueix una ruta:"

read ruta

until [ -d $ruta ]
do

	echo "Ruta incorrecta, introdueix la ruta de nou"
	read ruta
done

[[ -r $ruta ]] && echo "L'arxiu és de lectura"
[[ -w $ruta ]] && echo "L'arxiu es pot escriure"
[[ -x $ruta ]] && echo "L'arxiu es pot executar"

echo "Hi ha un total de:"
find $ruta -type f | wc -l
echo "arxius."

echo "Hi ha un total de:"
dire=$(find $ruta -type d | wc -l)
echo $((dire -1))   #resto uno porque cuenta el directorio actual
echo "directoris."

echo "Els noms dels arxius i directoris és:"
ls $ruta
