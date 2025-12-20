#!/bin/bash

pos=0
neg=0
zero=0


for i in $@
do
	if [[ "$i" =~ ^-?[0-9]+$ ]]
	then
		if [[ $i -gt 0 ]]
		then
			pos=$((pos + 1))
		elif [[ $i -lt 0 ]]
		then
			neg=$((neg + 1))
		else
			zero=$((zero + 1))
		fi
	else
		echo "Has introduït un paràmetre que no és un nombre enter"
		break
	fi
done
echo "Hi ha un total de $pos positius"
echo "Hi ha un total de $neg negatius"
echo "Hi ha un total de $zero iguals a zero"
