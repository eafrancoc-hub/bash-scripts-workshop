#!/bin/bash

echo "Introdueix el nom d'una variable global (HOME, USER, SHELL, PWD, PATH)"
read global
echo "Has escrit: $global"
echo "valor de l'última comanda executada (0: comanda s'ha executat correctament. 1: la comanda ha fallat):"
echo $?


echo "Arguments passats a l'script $@"

echo "valor de l'última comanda executada (0: comanda s'ha executat correctament. 1: la comanda ha fallat): "
echo $?

echo $$
