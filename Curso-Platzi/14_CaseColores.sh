#!/bin/bash
#Programa para trabajar con la sentencia case

color=""

echo -e "Ejemplo sentencia case con Colores"
read -p "ingrese el color de su preferecnia: " color
echo -e "\n"

case $color in
    "rojo") echo -e "\nrojo";;
    "azul") echo "azul";;
    *) echo -e "Color desconocido";;
esac
