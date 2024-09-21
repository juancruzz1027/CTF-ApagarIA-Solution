#!/bin/bash
#IMPORTANTE: VERIFICAR QUE LA URL SEA LA CORRECTA A LA HORA DE EJECUTAR.

#Setteo de variables
count=0
flag=0
read -p "Ingrese número desde: " min
read -p "Ingrese número hasta: " max
cant=$(expr $max - $min)

#Busqueda url por url
while [ $min -lt $max ]
do
i=$(echo -n $min | md5sum | cut -d "-" -f 1)
htmlcod=$(curl -sL https://chl-ccca46b9-839b-4361-9256-ca69d78e2f48-apagar_ia.softwareseguro.com.ar/codes/$i/)
count=$( expr $count + 1)

#Filtrado del html obtenido para que queden los códigos listados
if echo $htmlcod | grep -q "Not found" ; then
:
else
echo $htmlcod | grep "<li>" | sed 's/<[^>]*>//g' | tr -s "" " " > pags.txt

#Verificación de cumplimiento de condiciones
for j in $( cat pags.txt ); do
cars=$( echo $j | wc -m )
if [ $cars -eq 17 ]; then
flag=1
break
fi
done
fi
if [ $flag -eq 1 ]; then
porc=100
echo -ne "\rcompletado: $porc %"
echo -e "\nSe encontró el código que cumple las condiciones: $j"
echo "encriptado con hash md5: $(echo -n $j | md5sum)"
echo -e "\nurl donde se encuentra el código: https://chl-6c19507b-4137-4f07-8253-46bb433d6e6b-apagar_ia.softwareseguro.com.ar/codes/$i"
break
fi
porc=$(($count *100 / $cant))
echo -ne "\rcompletado: $porc %"
min=$( expr $min + 1)
done
if [ $flag -eq 0 ]; then
echo -e "\nbúsqueda finalizada, No se encontro un código que cumpla con las condiciones del desafío en las $cant de páginas visitadas"
fi
rm pags.txt

#Juan Cruz Rodríguez Villafañe
#Gregorio Tonelli

