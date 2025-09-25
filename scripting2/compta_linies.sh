#!/bin/bash

# Adrián Franco
# 25/09/2025
# L'script compta les linies de l arxiu passwd ometent les linies buides
echo "Començant el recompte de línies útils..."
cat /etc/passwd | grep -v '^$' | wc -l > linies.log 2> errors2.log && {

	date >> linies.log
}

echo "Procés completat! Consulta linies.log i errors.log"
