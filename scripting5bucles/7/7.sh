#!/bin/bash


until [ "$entrada" == "stop" ]
do
numero=$(( (RANDOM % 3) + 1 ))


echo "Introduce un valor para participar (1)piedra, (2)papel o (3)tijeras. Para dejar de jugar escribe "stop". "

read entrada

if [[ $numero -eq 1 ]]
then
	echo "La máquina ha elegido piedra"
elif [[ $numero -eq 2 ]]
then
	echo "La máquina ha elegido papel"
else
	echo "La máquina ha elegido tijeras"
fi

if [[ $entrada -eq $numero ]]
then
	echo "Empate, vuelve a introducir un valor."
elif [[ $entrada -eq 1 && $numero -eq 2 ]]
then
	echo "Pierdes"
elif [[ $entrada -eq 1 && $numero -eq 3 ]]
then
	echo "Ganas!"
elif [[ $entrada -eq 2 && $numero -eq 1 ]]
then
	echo "Ganas!"
elif [[ $entrada -eq 2 && $numero -eq 3 ]]
then
	echo "Pierdes"
elif [[ $entrada -eq 3 && $numero -eq 1 ]]
then
	echo "Pierdes"
elif [[ $entrada -eq 3 && $numero -eq 2 ]]
then
	echo "Ganas!"
fi
done
