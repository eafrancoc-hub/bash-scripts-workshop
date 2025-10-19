#!/bin/bash

echo "Analitzant fitxer..."

echo "Introdueix el nom d'un fitxer"

read nom

echo "Fitxer analitzat" $nom >> resultats.log 2>> errors.log

echo "Nombre de línies útils:" >> resultats.log
cat $nom 2>> errors.log | grep -v '^$' 2>> errors.log | wc -l >> resultats.log 2>> errors.log

echo "Nombre de paraules:" >> resultats.log
cat $nom 2>> errors.log | wc -w >> resultats.log 2>> errors.log

echo "Nombre de caràcters:" >> resultats.log
cat $nom 2>> errors.log | wc -c >> resultats.log 2>> errors.log

date >> resultats.log 2>> errors.log

echo "Procés completat! Revisa resultats.log i errors.log"
