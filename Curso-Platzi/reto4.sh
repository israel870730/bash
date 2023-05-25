#!/bin/bash
# Programa para ver:
#los procesos actuales
#memoria disponible
#espacio en Disco
#Informacion de red
#variables de entorno
#informacion de los progrmas instalados
#Hacer un backup

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "-----------------------------------------"
    echo "              Programa de Utilidad       "
    echo "-----------------------------------------"
    echo "              MENÚ PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Ver los procesos actules del servidor"
    echo "2. Memoria disponible"
    echo "3. Espacio en Disco"
    echo "4. Informacion de red"
    echo "5. Variables de Entorno"
    echo "6. Informacion de paquetes instalados"
    echo "7. Hacer un backup con Zip y Tar"
    echo "8. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\n\nProcesos:"
            echo "$(ps -aux)"
            sleep 3
            ;;

        2)
            echo -e "\n\nMemoria disponible"
            echo "$( free -h)"
            sleep 3
            ;;

        3)
            echo -e "\n\nEspacio en Disco"
            echo $"$( df -h)"
            sleep 3
            ;;

        4)
            echo -e "\n\nInformacion de red."
            echo "$( netstat -r)"
            sleep 3
            ;;

        5)
            echo -e "\n\nVariables de Entorno"
            echo "$(env)"
            sleep 3
            ;;
        6)
            echo -e "\n\nInformacion de paquetes instalados"
            echo $(dpkg -l)
            sleep 3
            ;;
        7)
            echo -e "\n\nHacer un backup"
            zip -r "pwd.zip" "pwd"
            sleep 10
            ;;
        8)
            echo -e "\n\nSalir"
            clear
            exit 0
            ;;
    esac
done
