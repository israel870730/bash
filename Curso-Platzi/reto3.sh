#!/bin/bash
#Programa reto #3

edadRegex='^([0-9]{1,2})$'
letrasRegex='^([A-Z]{1})[a-z]$'

opcion=1
edad=0
folder=""
nombre=""

echo "1 - Saber a que segmento de edad pertenesco"
echo "2 - Verificar existencia de directorio"
echo "3 - Verificar nombre"

read -p "Ingrese una opcion: " opcion
echo -e "\n"

case $opcion in
    "1") read -p "Ingrese su edad: " edad

    if [[ $edad =~ $edadRegex ]]; then

        if [ $edad -ge 0 ] && [ $edad -le 10 ]; then
            echo "Usted es un BB"
         elif [ $edad -gt 10 ] && [ $edad -le 17 ]; then
            echo "Usted es un adolecente"
         elif [ $edad -gt 17 ] && [ $edad -le 60 ]; then
            echo "Usted esta en edad de trabajo"
         else
            echo "Usted esta en edad de retiro"
         fi

      else
        echo "La edad esta incorrecta"
      fi;;

    "2") read -p "Introduce la ruta del directorio para validar si existe: " folder
        if [ -d $folder ]; then
            echo "El directorio $folder existe"
        else
            echo "El directorio no existe"
        fi;;

    "3") read -p "Introdusca su nombre completo: " nombre
            if [[ $nombre =~ $letrasRegex ]]; then 
                echo "Su nombre es $nombre"
            else
                echo " Su nombre esta incorrecto"
            fi;;

    *) echo -e "Opcion incorrecta";;
esac
