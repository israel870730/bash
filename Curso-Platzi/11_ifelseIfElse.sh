#!/bin/bash
#Programa para trabajar con las sentencias if, else if y else

edad=0

echo "Ejemplo Sentencia If - else"
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona es un adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La personana es adulta"
else
    echo "La persona es adulto mayor"
fi
