#!/bin/bash

echo "Introdueix un nombre:"

read nombre

if [[ $nombre -lt 0 ]]
  then echo "El nombre és negatiu"
else 
  echo "El nombre no és negatiu"
fi
