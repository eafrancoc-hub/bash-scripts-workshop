#!/bin/bash

echo "INFORME DEL SISTEMA"

echo "el nom de l'usuari és $USER"

echo "el resultat de whoami és:" 
whoami

echo "El directori personal és $HOME"

echo "el directori actual és $PWD"

echo "el contingut del directori actual és:"
ls

echo "Hi ha un total de :"
ls | wc -l
echo "elements al directori."

echo "el PID del SHELL és $$"

echo "codi retorn de l'última ordre $?"
