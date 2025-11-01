#!/bin/bash

validos=^-?[0-9]

if [[ $# -eq 3 ]];then
  if [[ $1 =~ $validos && $3 =~ $validos ]];then
    echo "Número de argumentos correcto y contiene 2 enteros"
    if [[ $2 = "add" || $2 = "subtract" || $2 = "multiply" || $2 = "divide" ]];then
     echo "La operación se puede realizar"
       if [[ $2 = "add" ]];then
         echo "El resultado de la operación es:" $(($1 + $3))
       fi
       if [[ $2 = "subtract" ]];then
         echo "El resultado de la operación es:" $(($1 - $3))
       fi
       if [[ $2 = "multiply" ]];then
         echo "El resultado de la operación es:" $(($1 * $3))
       fi
       if [[ $2 = "divide" && $3 -eq 0 ]];then
         echo "Error, no se puede dividir entre 0"
         exit
       fi
       if [[ $2 = "divide" ]];then
         echo "El resultado de la operación es:" $(($1 / $3))
       fi
     else echo "Error, el operador debe ser: add, subtract, multiply o divide"
       exit
    fi
    else echo "Error, los argumentos 1 y 3 deben ser valores enteros"
      exit
  fi
else
  echo "Error, introduce 3 argumentos"
fi

