#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de interracion FOR

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numero:"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Israel" "Karla" "Aida" "Qki"
do
    echo "Nombres: $nom"
done

echo "Iterar en archivos"
for fill in /*
do
    echo "Nombre Archivos:$fill"
done

echo ""
echo "Iterar utilizando un comando"
for fill in $(ls /)
do
    echo "Salida de comando: $fill"
done

echo ""
echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "Numero:$i"
done
