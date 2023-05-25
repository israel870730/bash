#!/bin/bash
#Reto num2, programa para saber el nombre completo entrado por consola y demas informacion
#El mismo reto esta realizado tambien para entrar los datos como parametros del script


nombre=""
apellidos=""
edad=0
direccion=""
numTelf=""


validarTexto='^([A-Z]{1})[a-z]+$'
validarDir='^([A-Z?a-z?0-9.,#/-\s]+)$'
#validarDir='^([A-Z]{1})[a-z][0-9].,#/-+$'
validarNum='^([0-9]{2})$'
validarTelf='[0-9]{8}$'


echo "Sistema de Informacion"

read -p "Ingrese su Nombre:" nombre
#Validacion Nombre
if [[ $nombre =~ $validarTexto ]]; then
    echo "Nombre $nombre valido"
else
    echo "Nombre $nombre invalido"
fi
echo ""


read -p "Ingrese su Apellidos:" apellidos
#Validacion Apellidos
if [[ $apellidos =~ $validarTexto ]]; then
    echo "Apellido $apellidos valido"
else
    echo "Apellido $apellidos invalido"
fi

echo ""

read -p "Ingrese su Edad:" edad
#Validacion Edad
if [[ $edad =~ $validarNum ]]; then
    echo "Edad $edad valido"
else
    echo "Edad $edad invalido"
fi

echo ""

read -p "Ingrese su Direccion:" direccion
#Validacion Direccion
if [[ $direccion =~ $validarDir ]]; then
    echo "Direccion $direccion valida"
else
    echo "Direccion $direccion invalida"
fi

echo ""

read -p "Ingrese su Num Telefonico:" numTelf
#Validacion Nombre
if [[ $numTelf =~ $validarTelf ]]; then
    echo "Telf $numTelf valido"
else
    echo "Telf $numTelf invalido"
fi

echo ""
echo "Tu nombre completo es $nombre $apellidos y tienes $edad annos de edad, vives en $direccion y tu num de telefono es: $numTelf"

