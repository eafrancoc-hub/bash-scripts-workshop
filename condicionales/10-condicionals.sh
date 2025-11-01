#!/bin/bash

echo "Introdueix la ruta d l'arxiu"
read arxiu

echo "Introdueix la paraula a cercar"
read paraula

if [[ -e $arxiu ]];then
  if [[ ${arxiu##*.} = txt || ${arxiu##*.} = csv ]];then
    echo "Número de línies amb aquesta paraula:"
    cat $arxiu | grep -i -c $paraula
    if [[ $? -eq 1 ]];then
      echo "No s'ha trobat cap coincidencia"
    fi
  else
    echo "Error, l'arxiu no és ni .txt ni .csv"
  fi
else
  echo "Error. l'arxiu no existeix"
fi

