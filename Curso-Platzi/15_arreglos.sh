#!/bin/bash
# Programa para ejemplificar el uso de arreglos

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Israel, Karla, Qki, Aida)
arregloRangos=({A..Z} {1..10})

#Imprimir todos los valores
echo "Arreglo de Numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Numeros: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Numeros: ${#arregloRangos[*]}"

#Imprimir la posicion 3 del arreglo de numeros, cadena y rango
echo "Posicion 3 Arreglo de Numeros: ${arregloNumeros[3]}"
echo "Posicion 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 Arreglo de Numeros: ${arregloRangos[3]}"

#Agregar y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño Arreglo de numeros: ${#arregloNumeros[*]}"

