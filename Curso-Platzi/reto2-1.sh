#!/bin/bash
#Reto num2, programa para saber el nombre completo entrado por consola y demas informacion
#El mismo reto esta realizado tambien para entrar los datos como parametros del script


nombre=""
apellidos=""
edad=0
direccion=""
numTelf=""

echo "Informacion completa como parametro"
while [ -n "$1" ]
do
case "$1" in

-a)
    parametroA="$2"
echo "El nombre es: $parametroA";;
#shift
#;;

-b) 
   parametroB="$2"
echo "El apellido es: $parametroB";;
#shift
#;;

-c) 
    parametroC="$2"
echo "La edad es: $parametroC";;
#shift
#;;



-*) echo "$! Hay una opcion no es valida";;

esac
shift
done

