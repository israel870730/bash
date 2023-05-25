#!/bin/bash
#Programa para trabajar con las sentencias if y else

nota=0
edad=0

echo "Ejemplo de sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9): " nota
echo ""
if (( $nota >=7 )); then
    echo "El alumno aprueba la materia"
else
   echo "El alumno no aprueba la materia"
fi

echo ""
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi
