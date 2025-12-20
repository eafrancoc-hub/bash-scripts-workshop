#!/bin/bash
i=0
until [ "$i" -ge 3 ]
do
	echo "Introdueix un valor:"
	read input

	i=$((i + 1))

if [[ $i -eq 1 ]]
then
	valor1=$input
fi
if [[ $i -eq 2 ]]
then
	valor2=$input
fi
if [[ $i -eq 3 ]]
then
	valor3=$input
fi
done

echo "La suma es"
echo $((valor1 + valor2 + valor3))

echo "El producto es"
echo $((valor1 * valor2 * valor3))

if [[ $valor1 -gt $valor2 && $valor1 -gt $valor3 ]]
then
	if [[ $valor2 -gt $valor3 ]]
	then
		echo "El valor más grande es $valor1 y el más pequeño es $valor3"
	else
		echo "El valor más grande es $valor1 y el más pequeño es $valor2"
	fi
elif [[ $valor2 -gt $valor3 ]]
then
	if [[ $valor1 -gt $valor3 ]]
	then
		echo "El valor más grande es $valor2 y el más pequeño es $valor3"
	else
		echo "El valor más grande es $valor2 y el más pequeño es $valor1"
	fi
elif [[ $valor3 -gt $valor2 ]]
then
	if [[ $valor1 -gt $valor2 ]]
	then
		echo "El valor más grande es $valor3 y el más pequeño es $valor2"
	else
		echo "El valor más grande es $valor3 y el más pequeño es $valor1"
	fi
fi
