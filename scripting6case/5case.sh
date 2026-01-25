#!/bin/bash

#funciones para retornar únicamente la ip de la lista de proxies, curl -s para que el output sea limpio, tail -n +13 para empezar por la
#línea 13, sed con la expresión regular para quitar los emojis y awk para delimitar por los dos puntos y dejar la ip sin el puerto

proxy_http() {
	curl -s https://raw.githubusercontent.com/roosterkid/openproxylist/main/HTTPS.txt | tail -n +13 | sed 's/^[^0-9]*//' | awk -F':' '{print $1}'

}

proxy_socks4() {
	curl -s https://raw.githubusercontent.com/roosterkid/openproxylist/main/SOCKS4.txt | tail -n +13 | sed 's/^[^0-9]*//' | awk -F':' '{print $1}'
}

proxy_socks5() {
	curl -s https://raw.githubusercontent.com/roosterkid/openproxylist/main/SOCKS5.txt | tail -n +13 | sed 's/^[^0-9]*//' | awk -F':' '{print $1}'

}
echo "Selecciona la llista de proxies que vulguis comprovar, http(1), socks4(2) o socks5(3)?"

read opcio

case "$opcio" in
	1)
		http_output=$(proxy_http) #guardo la salida de la función en una variable para poder utilizarla en el awk

		> http_disponibles.txt  #para vaciar el archivo cada vez que se ejecute

		max_http=$(proxy_http | wc -l)   #delimitar el máximo de iteraciones

		for ((i=1; i<=max_http; i++))
		do
			ip=$(echo "$http_output" | awk -v linea="$i" 'NR==linea')
			echo $ip
			if ping -c 1 "$ip" > /dev/null 2>&1  #este if debe ir sin los corchetes para que bash obtenga el exit code correctamente
			then
				echo "$ip" >> http_disponibles.txt  #enviar la ip que está activa al final del documento
			fi
		done
	;;
	2)
		SOCKS4_output=$(proxy_socks4)

                > socks4_disponibles.txt

                max_socks4=$(proxy_socks4 | wc -l)

                for ((i=1; i<=max_socks4; i++))
                do
                        ip=$(echo "$SOCKS4_output" | awk -v linea="$i" 'NR==linea')
                        echo $ip
                        if ping -c 1 "$ip" > /dev/null 2>&1
                        then
                                echo "$ip" >> socks4_disponibles.txt
                        fi
                done


	;;
	3)
		socks5_output=$(proxy_socks5)

                > socks5_disponibles.txt

                max_socks5=$(proxy_socks5 | wc -l)

                for ((i=1; i<=max_socks5; i++))
                do
                        ip=$(echo "$socks5_output" | awk -v linea="$i" 'NR==linea')
                        echo $ip
                        if ping -c 1 "$ip" > /dev/null 2>&1
                        then
                                echo "$ip" >> socks5_disponibles.txt
                        fi
                done


	;;
esac
