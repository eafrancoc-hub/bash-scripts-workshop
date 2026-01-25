#!/bin/bash

ssh -T afranco@10.1.83.70 << EOF
echo "El directorio actual es :"
pwd
echo "Los usuarios del sistema son:"
cat /etc/passwd
EOF
