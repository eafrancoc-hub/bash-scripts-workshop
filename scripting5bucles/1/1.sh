#!/bin/bash

> limpio.txt   # para limpiar el archivo

maximo=$(cat Act3_parole.txt | wc -l)

for ((i=1; i<maximo; i++))
do
	linea=$(awk -v linea="$i" 'NR==linea' Act3_parole.txt)  #awk -v para establecer una variable en linea, sino no funciona el NR
	echo ${linea%%#*} >> limpio.txt
done

echo "Introdueix una paraula o frase a cercar dins l'arxiu:"
read cerca

cat limpio.txt | grep "$cerca"

echo ""

echo "Introdueix una frase al final de l'arxiu:"
read frase

echo $frase >> limpio.txt
