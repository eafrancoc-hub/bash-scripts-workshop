#!/bin/bash

arxiu="/home/afranco/"$1

if [[ -f $arxiu ]];then
  if [[ $# = 1 ]];then
    echo "$arxiu existeix i és de tipus:" && file $arxiu
    [[ -r $arxiu ]] && echo "L'arxiu és de lectura"
    [[ -w $arxiu ]] && echo "L'arxiu es pot escriure"
    [[ -x $arxiu ]] && echo "L'arxiu es pot executar"
  fi
  if [[ $# != 1 ]];then
    echo "Error, introdueix un argument"
  fi
else
  echo "Error, l'arxiu no existeix"
fi
