#!/bin/bash
# Programa para ejemplificar el uso de la sentencia While

num=1

while [ $num -ne 10 ]
do
    echo "Impriendo: $num veces"
    num=$(( num + 1 ))
done
