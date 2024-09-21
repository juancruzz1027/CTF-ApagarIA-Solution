Apagar la IA - CTF IDOR Solution
Este repositorio contiene scripts en Bash para resolver el desafío CTF "Apagar la IA", centrado en vulnerabilidades IDOR (Insecure Direct Object Reference). 
Los scripts están diseñados para ayudar a la comunidad a comprender y superar este tipo de reto.

Requisitos
Sistema operativo: Linux
Dependencias: Instalar curl con el siguiente comando en bash:
sudo apt install curl

Ejecución
Asegúrate de otorgar permisos de ejecución a los scripts, en bash:
chmod +x md5HashGenerator.sh
chmod +x hashCrawler.sh

Ejecuta el script, en bash:
./md5HashGenerator min max resultado.txt
./hashCrawler.sh archivo_md5Hashes.txt

Contribuciones
Este repositorio está orientado a ayudar a otros a resolver el desafío. Cualquier sugerencia o mejora es bienvenida.

Licencia
Este proyecto está bajo la licencia MIT, lo que significa que otros pueden usarlo, pero deben otorgar el debido crédito.
