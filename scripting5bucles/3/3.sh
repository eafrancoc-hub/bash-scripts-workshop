#!/bin/bash
archivo=palabras.txt

if [[ -f $archivo ]]
then
	while [ "$palabra" != ":>" ]
	do
	read -p "Escriu les paraules a emmagatzemar: " palabra
	echo $palabra >> palabras.txt
	done
else
	echo "No existeix l'arxiu per emmagatzemar les paraules"
fi
