#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usurio utilizando el comando read 
#Autor: @iromero


option=0
name=""
pass=""

echo "Programa de utilidades"
read -p "Set you option:" option
read -p "Set your name:" name
echo "option:$option , name:$name"

read -s -p "Ingrese su contrase?a para confirmar:" pass
echo ""
echo "Tu password es:$pass" 

