#!/bin/bash

echo "Introdueix la ruta del directori"

read ruta

echo "Introdueix el nom amb el que es crearà el fitxer tarball"

read nom

if [[ -e $ruta ]];then
  if [[ -d $ruta ]];then
  echo "La ruta existeix i és un directori"
    if [[ -f $nom.tar.gz ]];then
      echo "Ja existeix un arxiu amb aquest nom, vols sobreescriure'l? (s)i (n)o"
      read entrada
      if [[ $entrada = s ]];then
        tar -cvzf $nom.tar.gz $ruta --overwrite
      fi
      if [[ $entrada = n ]];then
      echo "Tancant procés"
      exit
      fi
    else
      tar -cvzf $nom.tar.gz $ruta
    fi
  fi
else
  echo "Error, el directori no existeix"
fi

