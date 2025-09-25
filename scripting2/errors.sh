#!/bin/bash

cat no_existeiix 2> errors.log

if [ -f  "errors.log" ];
then
echo "Alguna cosa ha fallat! Revisa errors.log"
fi
