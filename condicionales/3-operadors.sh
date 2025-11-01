#!/bin/bash

echo "Introdueix un nombre:"
read nombre

if [[ $nombre -eq 0 ]]
  then echo "El nombre és zero"
else
  echo "El nombre és diferent de zero"
fi
