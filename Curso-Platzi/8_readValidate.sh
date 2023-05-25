#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio y validarla 
#Autor: @iromero


option=0
name=""
pass=""

echo "Programa de utilidades"
#Acepta el ingreso de informacion de solo un caracter
read  -n1 -p "Set you option:" option
echo -e "\n"
read -n10 -p "Set your name:" name
echo -e "\n"
echo "option:$option , name:$name"
echo -e "\n"

read -n10 -s -p "Ingrese su contrase?a para confirmar:" pass
echo -e "\n"
echo "Tu password es:$pass" 

