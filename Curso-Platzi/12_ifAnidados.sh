#!/bin/bash
#Programa para trabajar con IF anidados

nota=0
continua=""

echo "Ejemplo de sentencia If-Else"
read -n1 -p "Indique cual es su nota (1-9): " nota
echo ""
if [ $nota -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Va a continuar estudiando en el sgte nivel (s/n): " continua
    if [ $continua == s ]; then
        echo "Bienvenido al sgte nivel"
    else
        echo "Gracias por todo, mucha suerte !!!"
    fi
else
   echo "El alumno no aprueba la materia"
fi

