#!/bin/bash
echo "Introdueix la ruta "

read ruta

if [[ -d $ruta ]];then
  echo "L'arxiu és un directori"
fi
if [[ -f $ruta ]];then
  echo "L'arxiu és un fitxer amb extensió" ${ruta##*.}
fi
