#!/bin/bash

echo "Introdueix un nombre enter:"
read nombre

if [[ $nombre -gt 0 ]]
  then echo "El nombre és positiu"
elif [[ $nombre -lt 0 ]]
  then echo "El nombre és negatiu"
else
  echo "El nombre ha de ser diferent de zero"
fi
