#!/bin/bash

echo "Introdueix la ruta"

read ruta


if [[ -r $ruta ]];then
echo "L'arxiu té permisos de lectura"
fi
if [[ -w $ruta ]];then
echo "L'arxiu té permisos d'escritura"
fi
if [[ -x $ruta ]];then
echo "L'arxiu té permisos d'execució"
fi
