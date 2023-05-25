#!/bin/bash
#Programa para trabajar con expresiones condicionales

edad=0
pais=""
patharchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " patharchivo


echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niÑo o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else 
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con letras"
if [ $pais = "EEUU" ]; then 
    echo "La persona es Americana"
elif [ $pais = "Cuba" ] || [ $pais = "Uruguay" ]; then
    echo "La persona es del Sur de America"
else
    echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones condicionales con archivos"
#Para saber si un directorio existe comprueba con -d
if [ -d $patharchivo ]; then
    echo "El directorio $patharchivo existe"
else
    echo "El directorio $pathdirectorio no existe"
fi
