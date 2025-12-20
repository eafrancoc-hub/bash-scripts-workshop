#!/bin/bash

ok=0

until [ "$ok" -eq 1 ]
do
echo "La contrasenya ha de complir els següents requisits:"
echo "-Tenir almenys 8 caràcters"
echo "-Conté almenys una majúscula"
echo "-Conté almenys un número"

echo "Introdueix la contrasenya:"
read pass

length=${#pass}

if [[ $length -ge 8 && $pass =~ [A-Z] && $pass =~ [0-9] ]]
then
	echo "La contrasenya compleix els requisits."
	ok=1
else
	echo "ERROR!, la contrasenya no compleix els requisits"
	echo "Torna a escriure la contrasenya"
fi
done
