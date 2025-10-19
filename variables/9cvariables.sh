#!/bin/bash

CRACK="holasholasholas"

echo "The result of ##*hol is" ${CRACK##*hol}
echo "The result of #*hol is" ${CRACK#*hol}
echo "The result of %%as* is" ${CRACK%%as*}
echo "The result of %hol* is" ${CRACK%hol*}
