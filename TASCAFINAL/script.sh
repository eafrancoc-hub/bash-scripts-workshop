#!/bin/bash

ssh -T root@10.1.82.66 << 'EOF'


echo "Actualizando paquetes"
sleep 2
apt update

echo ""
echo "Comprobación nmap..."
if dpkg -s nmap &>/dev/null
then
	echo "nmap instalado y listo para usarse"
else
	apt install nmap
fi

sleep 2

echo "Ejecutando escaneo de puertos"
nmap -p- -n -Pn -T5 localhost
sleep 3

echo ""
echo "Comprobando espacio en disco"
sleep 2

limitacio=90
espai=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')


if [[ $espai -gt $limitacio ]];then
  echo "El espacio del disco está por encima del límite estipulado: $limitacio%"
else
  echo "El espacio del disco es correcto."
fi
sleep 2

echo "Eliminación de archivos temporales..."
quantitat=$(find /var/tmp -type f -mtime +7 -exec rm {} \; -print | wc -l)
echo "Se han eliminado $quantitat archivos"

if dpkg -s lynis &>/dev/null
then
        echo "Lynis instalado y listo para auditar"
else
        apt install lynis
fi

echo ""
echo "Ejecutando auditoría intensiva del sistema. Aviso, esto puede tardar un rato..."
sleep 2


lynis audit system

EOF
