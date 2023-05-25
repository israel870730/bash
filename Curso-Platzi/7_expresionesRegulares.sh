#!/bin/bash
#Programa para probar las expresiones regulares
#Autor: Israel Romero iromero

identificacionRegex='^[0-9]{10}'
paisRegex='^CU|UY|US$'
#fechaNacimientoRegex='^19|20[0-9]{2}[1-12][1-31]'
fechaNacimientoRegex='^(19|20)([0-9]){2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

echo "Expresiones regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar las iniciales de un Pais [CU, UY, US]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

#para comparar la expresión se debe utilizar el siguiente formato especial if [[ $variable =~ $expresionRegular ]]

#Validacion Identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi

#Validacion Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valida"
else
    echo "Pais $pais invalido"
fi

#Validacion Fecha de Nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valida"
else
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi
